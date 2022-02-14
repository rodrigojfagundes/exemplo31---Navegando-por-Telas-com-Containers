import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:exemplo31/pagina_2.dart';

//criando a funcao principal q é a funcao main...
void main() {
//ela vai chamar a funcao MeuApp que é ali q o APP vai iniciar
  runApp(
    pagina1(),
  );
}

class pagina1 extends StatefulWidget {
  const pagina1({Key? key}) : super(key: key);

  @override
  _pagina1State createState() => _pagina1State();
}

class _pagina1State extends State<pagina1> {
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
              //campo para deteccao de toque
              GestureDetector(
                //se for dado um toque/clique
                onTap: () {
                  //ao ser clicado/tocado... será chamado a funcao PAGINA2
                  //ou seja... ira fazer a mudanca de tela...
                  Navigator.of(context).pushNamed('/pagina2');
                },
                //criando um container para dizer q estamos na tela 1...
                //e q se clicarmos no container nos iremos para a tela 2...
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: Text(
                      'bem vindo a pagina 1... Clique para ir para pagina 2'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
