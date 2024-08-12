import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex/data/repositories/pokemon_save_loc.dart';
import 'package:pokedex/data/support/utils/extension/pokemon_type.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/injector.dart';

part 'detail_controller.g.dart';

class MyDetailController = DetailController with _$MyDetailController;

abstract class DetailController with Store {
  @observable
  int _index = 0;

  late Pokemon _pokemon;

  DetailController() : _pokemon = locator<PokemonSaveLoc>().pokemon;

  @action
  void setIndex(int value) => _index = value;

  int get index => _index;

  String get id => '#0${_pokemon.id}';

  String get image => _pokemon.imageSvg;

  int get lengthTypes => _pokemon.types.length;

  String get wight => _pokemon.weight.toString();

  String get height => _pokemon.height.toString();

  String typePokemon(int index) => _pokemon.types[index];

  Color colorType(int index) => _pokemon.pokemonTypeColor(index);

  String get name =>
      _pokemon.name[0].toUpperCase() + _pokemon.name.replaceRange(0, 1, '');
}
