// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storechecklist_page2.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StoreChecklistPage2 on StoreChecklistPage2Base, Store {
  final _$macacoIndicadorLikeAtom =
      Atom(name: 'StoreChecklistPage2Base.macacoIndicadorLike');

  @override
  Color get macacoIndicadorLike {
    _$macacoIndicadorLikeAtom.reportRead();
    return super.macacoIndicadorLike;
  }

  @override
  set macacoIndicadorLike(Color value) {
    _$macacoIndicadorLikeAtom.reportWrite(value, super.macacoIndicadorLike, () {
      super.macacoIndicadorLike = value;
    });
  }

  final _$StoreChecklistPage2BaseActionController =
      ActionController(name: 'StoreChecklistPage2Base');

  @override
  dynamic mudarmacacoindicador(dynamic value) {
    final _$actionInfo = _$StoreChecklistPage2BaseActionController.startAction(
        name: 'StoreChecklistPage2Base.mudarmacacoindicador');
    try {
      return super.mudarmacacoindicador(value);
    } finally {
      _$StoreChecklistPage2BaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
macacoIndicadorLike: ${macacoIndicadorLike}
    ''';
  }
}
