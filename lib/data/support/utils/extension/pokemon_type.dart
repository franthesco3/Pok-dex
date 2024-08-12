import 'package:flutter/material.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';

extension PokemonType on Pokemon {
  Color pokemonTypeColor(int index) {
    switch (types[index].toLowerCase()) {
      case 'normal':
        return Colors.brown;
      case 'grass':
        return Colors.green;
      case 'bug':
        return Colors.amber;
      case 'fire':
        return Colors.red;
      case 'ghost':
        return Colors.purple;
      case 'electric':
        return Colors.yellow;
      case 'fairy':
        return Colors.pink;
      case 'water':
        return Colors.blue;
       case 'ground':
        return Colors.brown;
      case 'psychic':
        return Colors.greenAccent;
      case 'poison':
        return Colors.purpleAccent;
      default:
        return Colors.blueGrey;
    }
  }
}
