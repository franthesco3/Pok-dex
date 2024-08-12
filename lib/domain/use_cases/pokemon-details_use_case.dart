import 'package:pokedex/data/repositories/pokemon_details_repository.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';

typedef Failure = void Function(String error);
typedef Success = void Function(Pokemon pokemon);

abstract class PokemonDetailsUseCaseProtocol {
  void execute({required String name, Success? success, Failure? failure});
}

class PokemondetailsUseCase extends PokemonDetailsUseCaseProtocol {
  final PokemonDetailsRepositoryProtocol _useCaseProtocol;

  PokemondetailsUseCase(
      {required PokemonDetailsRepositoryProtocol pokemonRepository})
      : _useCaseProtocol = pokemonRepository;

  @override
  void execute({required String name, Success? success, Failure? failure}) {
    _useCaseProtocol.getDetails(
      name: name,
      success: (result) {
        try {
          final pokemon = Pokemon.fromMap(result);

          success?.call(pokemon);
        }on Error catch (error) {
          failure?.call(error.toString());
        }
      },
      failure: (error) {
        failure?.call(error.message);
      },
    );
  }
}
