// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyHomeController on HomeController, Store {
  late final _$errorAtom = Atom(name: 'HomeController.error', context: context);

  @override
  String get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$_searchAtom =
      Atom(name: 'HomeController._search', context: context);

  @override
  String get _search {
    _$_searchAtom.reportRead();
    return super._search;
  }

  @override
  set _search(String value) {
    _$_searchAtom.reportWrite(value, super._search, () {
      super._search = value;
    });
  }

  late final _$_hasErrorAtom =
      Atom(name: 'HomeController._hasError', context: context);

  @override
  bool get _hasError {
    _$_hasErrorAtom.reportRead();
    return super._hasError;
  }

  @override
  set _hasError(bool value) {
    _$_hasErrorAtom.reportWrite(value, super._hasError, () {
      super._hasError = value;
    });
  }

  late final _$_hasSearchAtom =
      Atom(name: 'HomeController._hasSearch', context: context);

  @override
  bool get _hasSearch {
    _$_hasSearchAtom.reportRead();
    return super._hasSearch;
  }

  @override
  set _hasSearch(bool value) {
    _$_hasSearchAtom.reportWrite(value, super._hasSearch, () {
      super._hasSearch = value;
    });
  }

  late final _$_isLoadingAtom =
      Atom(name: 'HomeController._isLoading', context: context);

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$_copyAtom = Atom(name: 'HomeController._copy', context: context);

  @override
  List<Pokemon> get _copy {
    _$_copyAtom.reportRead();
    return super._copy;
  }

  @override
  set _copy(List<Pokemon> value) {
    _$_copyAtom.reportWrite(value, super._copy, () {
      super._copy = value;
    });
  }

  late final _$_pokemonsAtom =
      Atom(name: 'HomeController._pokemons', context: context);

  @override
  List<Pokemon> get _pokemons {
    _$_pokemonsAtom.reportRead();
    return super._pokemons;
  }

  @override
  set _pokemons(List<Pokemon> value) {
    _$_pokemonsAtom.reportWrite(value, super._pokemons, () {
      super._pokemons = value;
    });
  }

  late final _$HomeControllerActionController =
      ActionController(name: 'HomeController', context: context);

  @override
  void resetPokemon() {
    final _$actionInfo = _$HomeControllerActionController.startAction(
        name: 'HomeController.resetPokemon');
    try {
      return super.resetPokemon();
    } finally {
      _$HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSearch(String value) {
    final _$actionInfo = _$HomeControllerActionController.startAction(
        name: 'HomeController.setSearch');
    try {
      return super.setSearch(value);
    } finally {
      _$HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(bool value) {
    final _$actionInfo = _$HomeControllerActionController.startAction(
        name: 'HomeController.setError');
    try {
      return super.setError(value);
    } finally {
      _$HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHasSearch(bool value) {
    final _$actionInfo = _$HomeControllerActionController.startAction(
        name: 'HomeController.setHasSearch');
    try {
      return super.setHasSearch(value);
    } finally {
      _$HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$HomeControllerActionController.startAction(
        name: 'HomeController.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addPokemon(Pokemon pokemon) {
    final _$actionInfo = _$HomeControllerActionController.startAction(
        name: 'HomeController.addPokemon');
    try {
      return super.addPokemon(pokemon);
    } finally {
      _$HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPokemonList(List<Pokemon> values) {
    final _$actionInfo = _$HomeControllerActionController.startAction(
        name: 'HomeController.setPokemonList');
    try {
      return super.setPokemonList(values);
    } finally {
      _$HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error}
    ''';
  }
}
