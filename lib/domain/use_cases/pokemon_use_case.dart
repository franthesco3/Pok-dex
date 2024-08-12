import 'package:pokedex/data/models/result.dart';
import 'package:pokedex/data/repositories/pokemon_repository.dart';

typedef Failure = void Function(String error);
typedef Success = void Function(List<Result> resuts);

abstract class PokemonUseCaseProtocol {
  void execute({Success? success, Failure? failure});
}

class PokemonUseCase extends PokemonUseCaseProtocol {
  final PokemonRepositoryProtocol _pokemonRepository;

  PokemonUseCase({required PokemonRepositoryProtocol pokemonRepository})
      : _pokemonRepository = pokemonRepository;

  @override
  void execute({Success? success, Failure? failure}) {
    _pokemonRepository.getPokemons(
      success: (result) {
        final results = List<Result>.from(
            result['results'].map((element) => Result.fromMap(element)));

        success?.call(results);
      },
      failure: (error) {
        failure?.call(error.message);
      },
    );
  }
}
