import 'dart:ffi';

import 'package:exemplo31/pagina_2.dart';
import 'package:flutter/material.dart';

import 'package:exemplo31/pagina_1.dart';

//criando a funcao principal q é a funcao main...
void main() {
//ela vai chamar a funcao MeuApp que é ali q o APP vai iniciar
  runApp(
    MeuApp(),
  );
}

class MeuApp extends StatefulWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  _MeuAppState createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
//local para declarar as variaveis

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //passando qual é a ROTA inicial do APP, isso e definido pelo / BARRA
      initialRoute: '/',
      //criando as rotas existentes
      routes: {
        //dizendo q a '/' BARRA, (tela inicial do app)
        //é o q ta na funcao PAGINA1()... ou seja o q ta na funcao PAGINA1...
        //sera a tela inicial
        '/': (_) => const pagina1(),
        //quando algum botao pedir a /PAGINA2... nos vamos chamar
        //o arquivo q tem a funcao PAGINA2(), pois nesse arquivo tem o q ira aparecer
        //na tela da pagina2...
        '/pagina2': (_) => const pagina2(),
      },
    );
  }
}
