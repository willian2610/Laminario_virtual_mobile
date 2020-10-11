import 'package:flutter/material.dart';
import 'package:laminario_virtual_mobile/selecao_de_lamina.dart';

class HistSistemasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Captura a largura do dispositivo em pixels
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child:
          Wrap(
            spacing: 20, // to apply margin in the main axis of the wrap
            runSpacing: 20,
            children: <Widget>[
              Text("HISTOLOGIA DOS SISTEMAS",
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),

              //BOTÃO DO SISTEMA CARDIOVASCULAR
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelecaoDeLamina(categoria: "Sistema Cardiovascular",)));
                    },
                    color: Colors.purpleAccent,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                          'SISTEMA CARDIOVASCULAR',
                          style: TextStyle(fontSize: 25), textAlign: TextAlign.center,
                      ),
                    )
                ),
              ),

              //BOTÃO DO SISTEMA REPRODUTOR FEMININO
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelecaoDeLamina(categoria: "Sistema Reprodutor Feminino",)));
                    },
                    color: Colors.purpleAccent,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                          'SISTEMA REPRODUTOR FEMININO',
                          style: TextStyle(fontSize: 25), textAlign: TextAlign.center,
                      ),
                    )
                ),
              ),

              //BOTÃO DO SISTEMA REPRODUTOR MASCULINO
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelecaoDeLamina(categoria: "Sistema Reprodutor Masculino",)));
                    },
                    color: Colors.purpleAccent,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                          'SISTEMA REPRODUTOR MASCULINO',
                          style: TextStyle(fontSize: 25), textAlign: TextAlign.center,
                      ),
                    )
                ),
              ),

              //BOTÃO DO SISTEMA RESPIRATÓRIO
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelecaoDeLamina(categoria: "Sistema Respiratório",)));
                    },
                    color: Colors.purpleAccent,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                          'SISTEMA RESPIRATÓRIO',
                          style: TextStyle(fontSize: 25), textAlign: TextAlign.center,
                      ),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
