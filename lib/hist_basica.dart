import 'package:flutter/material.dart';
import 'package:laminario_virtual_mobile/selecao_de_lamina.dart';

class HistBasicaPage extends StatelessWidget {
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
                  Text("HISTOLOGIA BÁSICA",
                    style: TextStyle(fontSize: 40),
                    textAlign: TextAlign.center,
                  ),

                  //BOTÃO DOS TECIDOS CONJUNTIVOS
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelecaoDeLamina(categoria: "Tecido Conjuntivo",)));
                        },
                        color: Colors.purpleAccent,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              'TECIDO CONJUNTIVO',
                              style: TextStyle(fontSize: 30)
                          ),
                        )
                    ),
                  ),

                  //BOTÃO DOS TECIDOS EPITELIAIS
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelecaoDeLamina(categoria: "Tecido Epitelial",)));
                        },
                        color: Colors.purpleAccent,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              'TECIDO EPITELIAL',
                              style: TextStyle(fontSize: 30)
                          ),
                        )
                    ),
                  ),

                  //BOTÃO DOS TECIDOS MUSCULARES
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelecaoDeLamina(categoria: "Tecido Muscular",)));
                        },
                        color: Colors.purpleAccent,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              'TECIDO MUSCULAR',
                              style: TextStyle(fontSize: 30)
                          ),
                        )
                    ),
                  ),

                  //BOTÃO DOS TECIDOS NERVOSOS
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelecaoDeLamina(categoria: "Tecido Nervoso",)));
                        },
                        color: Colors.purpleAccent,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              'TECIDO NERVOSO',
                              style: TextStyle(fontSize: 30)
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
