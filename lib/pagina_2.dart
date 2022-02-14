import 'dart:ffi';

import 'package:flutter/material.dart';

//criando a funcao principal q é a funcao main...
void main() {
//ela vai chamar a funcao MeuApp que é ali q o APP vai iniciar
  runApp(
    pagina2(),
  );
}

class pagina2 extends StatefulWidget {
  const pagina2({Key? key}) : super(key: key);

  @override
  _pagina2State createState() => _pagina2State();
}

class _pagina2State extends State<pagina2> {
//declarando as variaveis

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //criando o esqueleto/scaffold do App
      home: Scaffold(
        //cor d efundo do app
        backgroundColor: Colors.yellow,
        //no corpo a SafeArea... ou seja todo APP fica em area visivel da tela
        body: SafeArea(
          //criano uma coluna /lista/vetor para colocar os containers
          child: Column(
            //o primeiro CHILDREN/FILHO
            children: [
              //basicamente um container para dizer q estamos na tela 2...
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Text('bem vindo a pagina 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
