import 'package:flutter/material.dart';

class HistBasicaPage extends StatelessWidget {
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
              Text("HISTOLOGIA BÁSICA",
                style: TextStyle(fontSize: 50),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
