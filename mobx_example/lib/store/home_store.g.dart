// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStore, Store {
  late final _$numeroCartaoAtom =
      Atom(name: '_HomeStore.numeroCartao', context: context);

  @override
  String get numeroCartao {
    _$numeroCartaoAtom.reportRead();
    return super.numeroCartao;
  }

  @override
  set numeroCartao(String value) {
    _$numeroCartaoAtom.reportWrite(value, super.numeroCartao, () {
      super.numeroCartao = value;
    });
  }

  late final _$nomeCartaoAtom =
      Atom(name: '_HomeStore.nomeCartao', context: context);

  @override
  String get nomeCartao {
    _$nomeCartaoAtom.reportRead();
    return super.nomeCartao;
  }

  @override
  set nomeCartao(String value) {
    _$nomeCartaoAtom.reportWrite(value, super.nomeCartao, () {
      super.nomeCartao = value;
    });
  }

  late final _$_HomeStoreActionController =
      ActionController(name: '_HomeStore', context: context);

  @override
  void onChangeNumero(String value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.onChangeNumero');
    try {
      return super.onChangeNumero(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangeNome(String value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.onChangeNome');
    try {
      return super.onChangeNome(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
numeroCartao: ${numeroCartao},
nomeCartao: ${nomeCartao}
    ''';
  }
}
