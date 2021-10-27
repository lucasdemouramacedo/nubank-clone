import 'package:flutter/material.dart';
import 'package:nubank_ui/pages/home/widgets/cards_app/cards_app.dart';
import 'package:nubank_ui/pages/home/widgets/cards_footer/cards_footer_app.dart';
import 'widgets/app_bar/my_app_bar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() =>
      _HomePageState(); //Criação de um estado mutável para a classe
}

class _HomePageState extends State<HomePage> {
  bool eye = false;
  // int _currentIndex = 0;

  Image olhoAberto = Image(
                              image: AssetImage('assets/icons/icons-app-bar/1-olho-aberto.png'),
                              height: 26,
                              color: Colors.white,
                            ); 
   Image olhoFechado = Image(
                              image: AssetImage('assets/icons/icons-app-bar/2-olho-fechado.png'),
                              height: 26,
                              color: Colors.white,
                            ); 
  @override
  void initState() {
    super.initState();
    eye = false;
    //_currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height; // Largura
    return Scaffold(
      backgroundColor:
          Colors.purple[800], //Define a cor do Plano de Fundo do Scafold
      body: Stack(
        // Stack é um widget no Flutter que contém uma lista de widgets e os posiciona um sobre o outro.
        alignment: Alignment.topCenter,
        children: [
          MyAppBar(
            olho:GestureDetector(
                        onTap: () {
                          setState(() {
                            eye = !eye;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.purple[700],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Material(
                            type: MaterialType.transparency,
                            child: InkWell(
                              customBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              splashColor: Colors.purple[600],
                              splashFactory: InkRipple.splashFactory,
                              child: Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  child: eye ? olhoAberto : olhoFechado,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
            //Chama a classe MyAppBar como a Barra Superior
            //showMenu: _showMenu, //Manda o estado do menu pelo construtor
           // onTap: () {
              //Ao clicar altera o estado da variável
              //setState(() {
               // _showMenu = !_showMenu; //Altera estado contrario do menu para o contrutor ao ser clicado (mudar o estado)
             // });
            //},
          ),
          CardsApp(
            top: _screenHeigth * .18,//!_showMenu ? _screenHeigth * .18 : _screenHeigth * .70,
            eye: eye,
          ),
          CardsFooterApp(
            top: _screenHeigth * .83
          ),
          //PageViewApp( //Chama a classe PageViewApp como o conteúdo com as páginas roláveis
          //top: _screenHeigth * .20, // Manda pelo construtor a distância que esse elemento estará do topo da tela
          // onChanged: (index) { //Manda pelo contrutor qual página rolavel esta posicionada para o usuário (através do index)
          //setState(() {
          //_currentIndex = index; //Atráves da mudança de estado a variável _currentIndex recebe o index
          //});
          //},
          //),
          //Positioned( //Um widget que controla onde um filho de uma Stack está posicionado.
          //top: _screenHeigth * .70, // Define a distância que esse elemento estará do topo da tela
          //child: MyDotsApp(//Chama a classe PageViewApp como o conteúdo com as os pontos de definição das páginas
          //currentIndex: _currentIndex,// Manda pelo construtor o index que foi recebido ao mudar de página de rolagem no onChanged,
          //),
          //),
        ],
      ),
    );
  }
}

