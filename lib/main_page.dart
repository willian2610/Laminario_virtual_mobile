import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Captura a largura do dispositivo em pixels
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Column(
            children: <Widget>[
              Text("Oi, tudo bem?",
                style: TextStyle(fontSize: 50),
                textAlign: TextAlign.center,
              ),
              Text("\nBem vind@ ao Laminário Virtual de Citologia e Histologia da UFCSPA!",
                style: TextStyle(fontSize: 21),
                textAlign: TextAlign.center,
              ),
              Text("\n      Aqui você pode encontrar as lâminas utilizadas nas disciplinas de Citologia e Histologia para poder estudar.\n"
                  "     Navegue entre os tecidos ou sistemas, podendo ver as lâminas em diversos aumentos e uma descrição de algumas estruturas.\n"
                  "     Veja a nossa sessão de perguntas para testar seus conhecimentos!\n",

                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              Image.asset("images/Logo.png", width: width*0.5,),
            ],
          ),
        ),
      ),
    );
  }
}
