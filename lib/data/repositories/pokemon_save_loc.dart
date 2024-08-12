import '../../domain/entities/pokemon_entity.dart';

class PokemonSaveLoc {
  late Pokemon _pokemon;

  void setPokemonLoc(Pokemon poke) {
    _pokemon = poke;
  }

  @override
  Pokemon get pokemon {
    return _pokemon;
  }
}
