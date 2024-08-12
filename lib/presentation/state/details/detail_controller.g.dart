// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyDetailController on DetailController, Store {
  late final _$_indexAtom =
      Atom(name: 'DetailController._index', context: context);

  @override
  int get _index {
    _$_indexAtom.reportRead();
    return super._index;
  }

  @override
  set _index(int value) {
    _$_indexAtom.reportWrite(value, super._index, () {
      super._index = value;
    });
  }

  late final _$DetailControllerActionController =
      ActionController(name: 'DetailController', context: context);

  @override
  void setIndex(int value) {
    final _$actionInfo = _$DetailControllerActionController.startAction(
        name: 'DetailController.setIndex');
    try {
      return super.setIndex(value);
    } finally {
      _$DetailControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
