import 'package:flutter/material.dart';
import 'package:laminario_virtual_mobile/hist_basica.dart';
import 'package:laminario_virtual_mobile/hist_sistemas.dart';
import 'package:laminario_virtual_mobile/info.dart';
import 'package:laminario_virtual_mobile/main_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Criação do índice responsável pela navegação entre as telas do aplicativo
  @override
  int _currentIndex = 0;
  //Lista com as classes das interfaces que serão invocadas pela barra de navegação
  final List<Widget> _children = [
    MainPage(),
    HistBasicaPage(),
    HistSistemasPage(),
    InfoPage(),
  ];


  //Estrutura base do aplicativo
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //Construção da barra superior do aplicativo
      appBar: AppBar(
        title: Text("Laminário Virtual - UFCSPA"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

      //Construção do corpo da aplicação.
      //Neste momento, a classe do índice que é setado na ação do clique dos botões da barra inferior é invocada
      body: _children[_currentIndex],

      //Construção da barra inferior de navegação
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Início")
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              title: Text("Tecidos")
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              title: Text("Sistemas")
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.info),
              title: Text("Informações")
          )
        ],
      ),
    );
  }

  //Função que atualiza a variavel _currentIndex toda vez que um dos botões da barra de navegação é acionado
  void onTabTapped (int index){
    setState(() {
      _currentIndex = index;
    });
  }

}
