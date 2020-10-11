import 'package:flutter/material.dart';
import 'package:laminario_virtual_mobile/hist_basica.dart';
import 'package:laminario_virtual_mobile/home.dart';
import 'package:laminario_virtual_mobile/visualizacao_lamina.dart';

class SelecaoDeLamina extends StatelessWidget {
  SelecaoDeLamina({this.categoria});

  String categoria;

  @override
  Widget build(BuildContext context) {

    //Função de criação dos cards. Cria um Wrap envolvendo todos os widgets necessários.
    Wrap exibeCards (String categoria){
      //Definições de altura de card
      double largura, altura = 0;
      if (MediaQuery.of(context).size.width <= 320) {
        largura = 250;
        altura = 80;
      }
      else{
        altura = 100;
        largura = 300;
      }

      //Controlador do botão "voltar"
      int backButtonIndex = 0;

      //Cria uma lista de cards
      List<Widget> ConjuntoDeWidgets (){

        List<Widget> widgets = [];

        //Título da página
        widgets.add(
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: largura,
                  child: Text(categoria, style: TextStyle(fontSize: 40), textAlign: TextAlign.center,)
                )
              ],
            )
        );

        //Testes para conteúdo
        //====================== HISTOLOGIA BÁSICA ======================
        //Categoria: TECIDO CONJUNTIVO
        if(categoria=="Tecido Conjuntivo"){
          backButtonIndex = 1;
          String nomePasta = "tecidoconjuntivo";
          List conjuntivoPath = ["cartilaginoso_hialino", "tecido_sanguineo"];
          List conjuntivoExibicao = ["Tecido Cartilaginoso Hialino", "Tecido Sanguineo"];

          //Laço de repetição que gera os cards das lâminas
          for(int i=0; i<conjuntivoPath.length;i++) {
            String caminho_imagem_capa = "images/laminas/"+nomePasta+"/"+conjuntivoPath[i]+"/capa.jpg";
            String titulo_card = conjuntivoExibicao[i];

            //Gera o card
            widgets.add(
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VisualizacaoLamina(categoria: conjuntivoPath[i],)));
                          },
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  caminho_imagem_capa,
                                  fit: BoxFit.cover,
                                  height: altura,
                                  width: largura,
                                ),
                              ),
                              Container(
                                  width: largura,
                                  child: Text(titulo_card, style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            );
          };
        }

        //Categoria: TECIDO EPITELIAL
        if(categoria=="Tecido Epitelial"){
          backButtonIndex = 1;
          List epitelialPath = ["glandular_exocrino_acinoso_de_secreção_holocrina", "glandular_exocrino_tubular_espiralado_simples"];//Nome da pasta de armazenamento
          List epitelialExibicao = ["Tecido epitelial glandular exócrino acinoso de secreção holócrina", "Tecido epitelial glandular exócrino tubular espiralado simples"];//Nome para exibição

          //Laço de repetição que gera os cards das lâminas
          for(int i=0; i<epitelialPath.length;i++) {
            String caminho_imagem_capa = "images/laminas/tecidoepitelial/"+epitelialPath[i]+"/capa.jpg";
            String titulo_card = epitelialExibicao[i];

            //Gera o card
            widgets.add(
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage(currentIndex: 1,)));
                          },
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  caminho_imagem_capa,
                                  fit: BoxFit.cover,
                                  height: altura,
                                  width: largura,
                                ),
                              ),
                              Container(
                                width: largura,
                                  child: Text(titulo_card, style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            );
          };
        }

        //Categoria: TECIDO MUSCULAR
        if(categoria=="Tecido Muscular"){
          backButtonIndex = 1;
          List muscularPath = ["estriado_esqueletico", "liso"];//Nome da pasta de armazenamento
          List muscularExibicao = ["Tecido muscular estriado esquelético", "Tecido muscular liso"];//Nome para exibição

          //Laço de repetição que gera os cards das lâminas
          for(int i=0; i<muscularPath.length;i++) {
            String caminho_imagem_capa = "images/laminas/tecidomuscular/"+muscularPath[i]+"/capa.jpg";
            String titulo_card = muscularExibicao[i];

            //Gera o card
            widgets.add(
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage(currentIndex: 1,)));
                          },
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  caminho_imagem_capa,
                                  fit: BoxFit.cover,
                                  height: altura,
                                  width: largura,
                                ),
                              ),
                              Container(
                                  width: largura,
                                  child: Text(titulo_card, style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            );
          };
        }

        //Categoria: TECIDO NERVOSO
        if(categoria=="Tecido Nervoso"){
          backButtonIndex = 1;
          List muscularPath = ["cerebelo", "medula_espinhal"];//Nome da pasta de armazenamento
          List muscularExibicao = ["Cerebelo", "Medula Espinhal"];//Nome para exibição

          //Laço de repetição que gera os cards das lâminas
          for(int i=0; i<muscularPath.length;i++) {
            String caminho_imagem_capa = "images/laminas/tecidonervoso/"+muscularPath[i]+"/capa.jpg";
            String titulo_card = muscularExibicao[i];

            //Gera o card
            widgets.add(
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage(currentIndex: 1,)));
                          },
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  caminho_imagem_capa,
                                  fit: BoxFit.cover,
                                  height: altura,
                                  width: largura,
                                ),
                              ),
                              Container(
                                  width: largura,
                                  child: Text(titulo_card, style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            );
          };
        }

        //====================== HISTOLOGIA DOS SISTEMAS ======================

        //Categoria: SISTEMA CARDIOVASCULAR
        if(categoria=="Sistema Cardiovascular"){
          backButtonIndex = 2;
          List muscularPath = ["aorta", "veia_media_e_aorta_media"];//Nome da pasta de armazenamento
          List muscularExibicao = ["Aorta", "Veia Média e Aorta Média"];//Nome para exibição

          //Laço de repetição que gera os cards das lâminas
          for(int i=0; i<muscularPath.length;i++) {
            String caminho_imagem_capa = "images/laminas/sistemacardiovascular/"+muscularPath[i]+"/capa.jpg";
            String titulo_card = muscularExibicao[i];

            //Gera o card
            widgets.add(
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage(currentIndex: 1,)));
                          },
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  caminho_imagem_capa,
                                  fit: BoxFit.cover,
                                  height: altura,
                                  width: largura,
                                ),
                              ),
                              Container(
                                  width: largura,
                                  child: Text(titulo_card, style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            );
          };
        }

        //Categoria: SISTEMA REPRODUTOR FEMININO
        if(categoria=="Sistema Reprodutor Feminino"){
          backButtonIndex = 2;
          List muscularPath = ["tuba_uterina", "utero"];//Nome da pasta de armazenamento
          List muscularExibicao = ["Tuba Uterina", "Útero"];//Nome para exibição

          //Laço de repetição que gera os cards das lâminas
          for(int i=0; i<muscularPath.length;i++) {
            String caminho_imagem_capa = "images/laminas/sistemareprodutorfeminino/"+muscularPath[i]+"/capa.jpg";
            String titulo_card = muscularExibicao[i];

            //Gera o card
            widgets.add(
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage(currentIndex: 1,)));
                          },
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  caminho_imagem_capa,
                                  fit: BoxFit.cover,
                                  height: altura,
                                  width: largura,
                                ),
                              ),
                              Container(
                                  width: largura,
                                  child: Text(titulo_card, style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            );
          };
        }

        //Categoria: SISTEMA REPRODUTOR MASCULINO
        if(categoria=="Sistema Reprodutor Masculino"){
          backButtonIndex = 2;
          List muscularPath = ["prostata", "testiculo"];//Nome da pasta de armazenamento
          List muscularExibicao = ["Próstata", "Testículo"];//Nome para exibição

          //Laço de repetição que gera os cards das lâminas
          for(int i=0; i<muscularPath.length;i++) {
            String caminho_imagem_capa = "images/laminas/sistemareprodutormasculino/"+muscularPath[i]+"/capa.jpg";
            String titulo_card = muscularExibicao[i];

            //Gera o card
            widgets.add(
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage(currentIndex: 1,)));
                          },
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  caminho_imagem_capa,
                                  fit: BoxFit.cover,
                                  height: altura,
                                  width: largura,
                                ),
                              ),
                              Container(
                                  width: largura,
                                  child: Text(titulo_card, style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            );
          };
        }

        //Categoria: SISTEMA RESPIRATÓRIO
        if(categoria=="Sistema Respiratório"){
          backButtonIndex = 2;
          List muscularPath = ["pulmao", "traqueia"];//Nome da pasta de armazenamento
          List muscularExibicao = ["Pulmão", "Traqueia"];//Nome para exibição

          //Laço de repetição que gera os cards das lâminas
          for(int i=0; i<muscularPath.length;i++) {
            String caminho_imagem_capa = "images/laminas/sistemarespiratorio/"+muscularPath[i]+"/capa.jpg";
            String titulo_card = muscularExibicao[i];

            //Gera o card
            widgets.add(
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage(currentIndex: 1,)));
                          },
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  caminho_imagem_capa,
                                  fit: BoxFit.cover,
                                  height: altura,
                                  width: largura,
                                ),
                              ),
                              Container(
                                  width: largura,
                                  child: Text(titulo_card, style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            );
          };
        }

        //Cria botão VOLTAR
        widgets.add(
          FlatButton(
            color: Colors.purple,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage(currentIndex: backButtonIndex,)));
            },
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.arrow_back, size: 30,),
                    Text("Voltar", style: TextStyle(fontSize: 30)),
                  ],
                )
              ],
            ),
          ),
        );

        //Retorna a lista de widgets gerados
        return widgets;
      }


      return Wrap(
        spacing: 20,
        runSpacing: 20,
        children: ConjuntoDeWidgets(),
      );

    }



    //Captura a largura do dispositivo em pixels
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      //Construção da barra superior do aplicativo
      appBar: AppBar(
        title: Text("Laminário Virtual - UFCSPA"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

      //Construção do corpo da página
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: exibeCards(categoria),
        ),
      ),
    );
  }
}
