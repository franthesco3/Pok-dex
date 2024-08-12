import 'package:get_it/get_it.dart';
import 'package:pokedex/data/api/setup/api_provider.dart';
import 'package:pokedex/data/repositories/pokemon_details_repository.dart';
import 'package:pokedex/data/repositories/pokemon_repository.dart';
import 'package:pokedex/data/repositories/pokemon_save_loc.dart';
import 'package:pokedex/domain/use_cases/pokemon-details_use_case.dart';
import 'package:pokedex/domain/use_cases/pokemon_use_case.dart';

final locator = GetIt.I;

void setup() {
  locator.registerFactory<ApiProvider>(() => ApiProvider());
  locator.registerLazySingleton<PokemonSaveLoc>(() => PokemonSaveLoc());
  locator.registerFactory<PokemonRepositoryProtocol>(() => PokemonRepository(provider: locator<ApiProvider>()));
  locator.registerFactory<PokemonUseCaseProtocol>(() => PokemonUseCase(pokemonRepository: locator<PokemonRepositoryProtocol>()));
  locator.registerFactory<PokemonDetailsRepositoryProtocol>(() => PokemonDetailsRepository(provider: locator<ApiProvider>()));
  locator.registerFactory<PokemonDetailsUseCaseProtocol>(() => PokemondetailsUseCase(pokemonRepository: locator<PokemonDetailsRepositoryProtocol>()));
}
