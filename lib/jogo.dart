import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _Jogo();
}

class _Jogo extends State<Jogo> {

  var _imgApp = AssetImage("imgs/padrao.png");
  var _msg = "Escolha uma opção abaixo";

  void _opcSelecionada(String userChoice){
    final opcoes = ["pedra", "papel", "tesoura"];

    final numero = Random().nextInt(3);

    final appChoice = opcoes[numero];

    //Mudanças
    switch(appChoice){
      case "pedra":
        setState(() {
          _imgApp = AssetImage("imgs/pedra.png");
        });
        break;
      
      case "papel":
        setState(() {
          _imgApp = AssetImage("imgs/papel.png");
        });
        break;

      case "tesoura":
        setState(() {
          _imgApp = AssetImage("imgs/tesoura.png");
        });
        break;

    }

    // quem ganhou
    //Usuario
    if((userChoice == "pedra" && appChoice == "tesoura") || (userChoice == "tesoura" && appChoice == "papel") || (userChoice == "papel" && appChoice == "pedra")){
      setState(() {
        _msg = "Você ganhou :)";
      });
    }
    else if((appChoice == "pedra" && userChoice == "tesoura") || (appChoice == "tesoura" && userChoice == "papel") || (appChoice == "papel" && userChoice == "pedra")){
      setState(() {
        _msg = "Você perdeu :(";
      });
    }
    else{
      setState(() {
        _msg = "Empatamos :/";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "JokenPo",
          style: TextStyle(
            color: Colors.white,

          )
          ),
        backgroundColor: const Color.fromARGB(255, 19, 167, 187),
      ),


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center, //Centralizando
        children: [
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            )
          ),

         Image(image: _imgApp),
          
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _msg,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            )
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              GestureDetector(
                onTap: () => _opcSelecionada("pedra"),
                child: Image.asset( "imgs/pedra.png", height: 100,)
              ),

              GestureDetector(
                onTap: () => _opcSelecionada("papel"),
                child: Image.asset( "imgs/papel.png", height: 100,)
              ),

              GestureDetector(
                onTap: () => _opcSelecionada("tesoura"),
                child: Image.asset( "imgs/tesoura.png", height: 100,)
              )

              /*Image.asset( "imgs/pedra.png", height: 100,),
              Image.asset("imgs/papel.png", height: 100),
              Image.asset("imgs/tesoura.png", height: 100) */
            ],
          )

        ],
      )
    );
  }
}
