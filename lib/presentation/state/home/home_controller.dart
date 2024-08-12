import 'package:mobx/mobx.dart';
import 'package:pokedex/injector.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/data/models/result.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/domain/use_cases/pokemon_use_case.dart';
import 'package:pokedex/data/repositories/pokemon_save_loc.dart';
import 'package:pokedex/data/support/utils/extension/pokemon_type.dart';
import 'package:pokedex/domain/use_cases/pokemon-details_use_case.dart';

part 'home_controller.g.dart';

class MyHomeController = HomeController with _$MyHomeController;

abstract class HomeController with Store {
  @observable
  String error = "";
  @observable
  String _search = "";
  @observable
  bool _hasError = false;
  @observable
  bool _hasSearch = false;
  @observable
  bool _isLoading = false;
  @observable
  List<Pokemon> _copy = <Pokemon>[];
  @observable
  List<Pokemon> _pokemons = <Pokemon>[];

  @action
  void resetPokemon() => _pokemons = _copy;

  @action
  void setSearch(String value) => _search = value;

  @action
  void setError(bool value) => _hasError = value;

  @action
  void setHasSearch(bool value) => _hasSearch = value;

  @action
  void setLoading(bool value) => _isLoading = value;

  @action
  void addPokemon(Pokemon pokemon) => _pokemons.add(pokemon);

  @action
  void setPokemonList(List<Pokemon> values) => _pokemons = values;

  List<Result> result = [];

  bool get hasError => _hasError;

  bool get hasSearch => _hasSearch;

  bool get isLoading => _isLoading;

  int get length => _pokemons.length;

  List<Pokemon> get pokemons => _pokemons;

  Pokemon pokemon(int index) => _pokemons[index];

  String name(int index) => _pokemons[index].name;

  String image(int index) => _pokemons[index].imageSvg;

  Color colorPokemon(int index) => _pokemons[index].pokemonTypeColor(0);

  void pokemonNextScreen(Pokemon pokemon) {
    locator<PokemonSaveLoc>().setPokemonLoc(pokemon);
  }

  void searchPokemon(String value) {
    if (value.isNotEmpty) {
      setHasSearch(true);
      final newList = _pokemons.where((pokemon) {
        return pokemon.name.contains(value.toLowerCase());
      }).toList();

      setPokemonList(newList);
      return;
    }
    setHasSearch(false);
    setPokemonList(_copy);
  }

  void getPokemon() {
    setLoading(true);
    setError(false);
    locator<PokemonUseCaseProtocol>().execute(
      failure: (erro) {
        setLoading(false);
        setError(true);
      },
      success: (pokemons) {
        result = pokemons;
        setLoading(false);
        getDetailsPokemon();
      },
    );
  }

  void getDetailsPokemon() {
    if (result.isNotEmpty) {
      setLoading(true);
      setError(false);
      for (int i = 0; i < result.length; i++) {
        locator<PokemonDetailsUseCaseProtocol>().execute(
          name: result[i].name,
          failure: (error) {
            if (length == result.length) setError(true);
          },
          success: (pokemon) {
            addPokemon(pokemon);
            if (length == result.length) {
              setLoading(false);
              _copy = _pokemons;
            }
          },
        );
      }
    }
  }
}
