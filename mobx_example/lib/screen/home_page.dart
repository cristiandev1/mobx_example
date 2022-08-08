// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_example/store/home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // autorun((_) {
    //   print("digitando numero do cartao : ${homeStore.numeroCartao}");
    //   print("digitando nome no cartao : ${homeStore.nomeCartao}");
    // });

    //Monitora os observáveis ​​usados ​​dentro da fn()função e executa o effect()quando a fn()função retorna um valor diferente. 
    //Apenas os observáveis ​​internos fn()são rastreados.
    //Todos eles retornam um ReactionDisposer, uma função que pode ser chamada para descartar a reação.
    ReactionDisposer dispose = reaction((_) => homeStore.numeroCartao, (msg) => print(msg));
    
    //dispose();
    super.initState();
  }

  @override
  void dispose() {
    dispose();
    super.dispose();
  }

  final homeStore = HomeStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff343090),
        title: const Text('Exemplo Mobx'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                maxLength: 19,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Digite o numero do cartao',
                ),
                keyboardType: TextInputType.number,
                onChanged: homeStore.onChangeNumero,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                maxLength: 30,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Digite o nome do titular',
                ),
                keyboardType: TextInputType.text,
                onChanged: homeStore.onChangeNome,
              ),
            ),
          ),
          Observer(
            builder: (_) {
              return Card(
                color: Color(0xff343090),
                child: Container(
                  width: 300,
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        homeStore.numeroCartao,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        homeStore.nomeCartao.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
