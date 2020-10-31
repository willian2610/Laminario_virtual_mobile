import 'dart:ffi';
import 'dart:io' as io;
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:laminario_virtual_mobile/selecao_de_lamina.dart';
import 'Textos/textos.dart';


class VisualizacaoLamina extends StatelessWidget {
  VisualizacaoLamina({this.categoria});

  String categoria;


  @override
  Widget build(BuildContext context) {

    //Função de criação dos cards. Cria um Wrap envolvendo todos os widgets necessários.
    Wrap exibeCards (String categoria){

      //Definições de altura de card
      double largura, altura = 0;
      if (MediaQuery.of(context).size.width <= 320) {
        largura = 280;
        altura = 80;
      }
      else{
        altura = 100;
        largura = 350;
      }

      //Controlador do botão "voltar"
      String backButtonIndex = "";

      //Variáveis uteis
      String titulo, texto, diretorio;
      List lista_de_aumentos;

      //Testes para atribuição de valores às variáveis uteis
      //TECIDO CONJUNTIVO
      if(categoria=="cartilaginoso_hialino"){
        backButtonIndex = "Tecido Conjuntivo";
        diretorio = "tecidoconjuntivo/cartilaginoso_hialino";
        titulo = Strings.tecidoCartilaginosoHialinoTitulo;
        texto = Strings.tecidoCartilaginosoHialinoTexto;
        lista_de_aumentos = ["x100", "x400"];
      }
      if(categoria=="tecido_sanguineo"){
        backButtonIndex = "Tecido Conjuntivo";
        diretorio = "tecidoconjuntivo/tecido_sanguineo";
        titulo = Strings.tecidoSanguineoTitulo;
        texto = Strings.tecidoSanguineoTexto;
        lista_de_aumentos = ["x40", "x100", "x200", "x400"];
      }
      //TECIDO EPITELIAL
      if(categoria=="glandular_exocrino_acinoso_de_secreção_holocrina"){
        backButtonIndex = "Tecido Epitelial";
        diretorio = "tecidoepitelial/glandular_exocrino_acinoso_de_secreção_holocrina";
        titulo = Strings.tecidoGlandularExocrinoAcinosoTitulo;
        texto = Strings.tecidoGlandularExocrinoAcinosoTexto;
        lista_de_aumentos = ["x200", "x400"];
      }
      if(categoria=="glandular_exocrino_tubular_espiralado_simples"){
        backButtonIndex = "Tecido Epitelial";
        diretorio = "tecidoepitelial/glandular_exocrino_tubular_espiralado_simples";
        titulo = Strings.tecidoGlandularExocrinoTubularTitulo;
        texto = Strings.tecidoGlandularExocrinoTubularTexto;
        lista_de_aumentos = ["x40"];
      }
      //TECIDO MUSCULAR
      if(categoria=="estriado_esqueletico"){
        backButtonIndex = "Tecido Muscular";
        diretorio = "tecidomuscular/estriado_esqueletico";
        titulo = Strings.tecidoEstriadoEsqueleticoTitulo;
        texto = Strings.tecidoEstriadoEsqueleticoTexto;
        lista_de_aumentos = ["x400"];
      }
      if(categoria=="liso"){
        backButtonIndex = "Tecido Muscular";
        diretorio = "tecidomuscular/liso";
        titulo = Strings.tecidoLisoTitulo;
        texto = Strings.tecidoLisoTexto;
        lista_de_aumentos = ["x400"];
      }
      //TECIDO NERVOSO
      if(categoria=="cerebelo"){
        backButtonIndex = "Tecido Nervoso";
        diretorio = "tecidonervoso/cerebelo";
        titulo = Strings.cerebeloTitulo;
        texto = Strings.cerebeloTexto;
        lista_de_aumentos = ["x40", "x100", "x400"];
      }
      if(categoria=="medula_espinhal"){
        backButtonIndex = "Tecido Nervoso";
        diretorio = "tecidonervoso/medula_espinhal";
        titulo = Strings.medulaEspinhalTitulo;
        texto = Strings.medulaEspinhalTexto;
        lista_de_aumentos = ["x40", "x100", "x400"];
      }
      //SISTEMA CARDIOVASCULAR
      if(categoria=="aorta"){
        backButtonIndex = "Sistema Cardiovascular";
        diretorio = "sistemacardiovascular/aorta";
        titulo = Strings.aortaTitulo;
        texto = Strings.aortaTexto;
        lista_de_aumentos = ["x40"];
      }
      if(categoria=="veia_media_e_aorta_media"){
        backButtonIndex = "Sistema Cardiovascular";
        diretorio = "sistemacardiovascular/veia_media_e_aorta_media";
        titulo = Strings.veiaMediaTitulo;
        texto = Strings.veiaMediaTexto;
        lista_de_aumentos = ["x40", "x200"];
      }
      //SISTEMA REPRODUTOR FEMININO
      if(categoria=="tuba_uterina"){
        backButtonIndex = "Sistema Reprodutor Feminino";
        diretorio = "sistemareprodutorfeminino/tuba_uterina";
        titulo = Strings.tubaUterinaTitulo;
        texto = Strings.tubaUterinaTexto;
        lista_de_aumentos = ["x40", "x100", "x400"];
      }
      if(categoria=="utero"){
        backButtonIndex = "Sistema Reprodutor Feminino";
        diretorio = "sistemareprodutorfeminino/utero";
        titulo = Strings.uteroTitulo;
        texto = Strings.uteroTexto;
        lista_de_aumentos = ["x40", "x100", "x200", "x400"];
      }
      //SISTEMA REPRODUTOR MASCULINO
      if(categoria=="prostata"){
        backButtonIndex = "Sistema Reprodutor Masculino";
        diretorio = "sistemareprodutormasculino/prostata";
        titulo = Strings.prostataTitulo;
        texto = Strings.prostataTexto;
        lista_de_aumentos = ["x40", "x100", "x200", "x400"];
      }
      if(categoria=="testiculo"){
        backButtonIndex = "Sistema Reprodutor Masculino";
        diretorio = "sistemareprodutormasculino/testiculo";
        titulo = Strings.testiculoTitulo;
        texto = Strings.testiculoTexto;
        lista_de_aumentos = ["x40", "x100", "x200", "x400"];
      }
      //SISTEMA RESPIRATÓRIO
      if(categoria=="pulmao"){
        backButtonIndex = "Sistema Respiratorio";
        diretorio = "sistemarespiratorio/pulmao";
        titulo = Strings.pulmaoTitulo;
        texto = Strings.pulmaoTexto;
        lista_de_aumentos = ["x40", "x100", "x200", "x400"];
      }
      if(categoria=="traqueia"){
        backButtonIndex = "Sistema Respiratorio";
        diretorio = "sistemarespiratorio/traqueia";
        titulo = Strings.traqueiaTitulo;
        texto = Strings.traqueiaTexto;
        lista_de_aumentos = ["x40", "x100", "x400"];
      }


      //Cria uma lista de cards
      List<Widget> ConjuntoDeWidgets (){

        //Inicializauma lista de Widgets vazia
        List<Widget> widgets = [];

        //Cria uma lista de cards para exibir as imagens das lâminas
        List<Card> listaImagens = new List<Card>();

        //Gera os cards com as imagens das lâminas de forma iterativa
        for (int i = 0; i<lista_de_aumentos.length; i++){
          listaImagens.add(
              Card(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 300,
                            height: 200,
                            child: ClipRect(
                              child: Image.asset("images/laminas/"+diretorio+"/"+lista_de_aumentos[i]+".jpg", fit: BoxFit.cover,),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.search, size: 15),
                                  Text("Aumento "+lista_de_aumentos[i])
                                ],
                              )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
        }

        //Título da lâmina
        widgets.add(
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: largura,
                  child: Text(titulo, style: TextStyle(fontSize: 30), textAlign: TextAlign.center,)
                ),
              ],
            )
        );

        //Cria o carrossel com as imagens da lâmina
        widgets.add(
          SizedBox(
              height: 250.0,
              width: 450.0,
              child: Carousel(
                images: listaImagens,
                dotSize: 4.0,
                dotIncreasedColor: Colors.purple,
                dotSpacing: 15.0,
                dotColor: Colors.purpleAccent,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.purple.withOpacity(0.0),
                borderRadius: true,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
                showIndicator: true,
                radius: Radius.circular(8.0),
                autoplay: false,
              )
          ),
        );

        //Texto da Lâmina
        widgets.add(
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                    width: largura,
                    child: Text(texto, style: TextStyle(fontSize: 21), textAlign: TextAlign.justify,)
                ),
              ],
            )
        );

        //Cria botão VOLTAR
        widgets.add(
          FlatButton(
            color: Colors.purple,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelecaoDeLamina(categoria: backButtonIndex,)));
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
