import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

// Classe usada pelo resto do codebase
class HomeStore = _HomeStore with _$HomeStore;

// Store class
abstract class _HomeStore with Store {

  @observable
  String numeroCartao = "";

  @observable
  String nomeCartao = "";

  @action
  void onChangeNumero(String value){
    numeroCartao = value;
  }

  @action
  void onChangeNome(String value){
    nomeCartao = value;
  }

}