import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _Jogo();
}

class _Jogo extends State<Jogo> {
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
              "Escolha do app:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            )
          ),

          Image.asset(
            "imgs/padrao.png"
          ),
          
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha uma opção abaixo",
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
              Image.asset( "imgs/pedra.png", height: 100,),
              Image.asset("imgs/papel.png", height: 100),
              Image.asset("imgs/tesoura.png", height: 100)
            ],
          )

        ],
      )
    );
  }
}
