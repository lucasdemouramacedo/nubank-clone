import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  // final bool showMoney;
  final Widget olho;
  const MyAppBar({Key? key, required this.olho})
      : super(
            key:
                key); //Contrutor passando o onTap do menu, se foi clicado ou não
  @override
  Widget build(BuildContext context) {
    return Column(
      //Um widget que exibe seus filhos em uma matriz vertical.
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          //color: Colors.purple[800], //Delfine a cor de fundo do container
          height: MediaQuery.of(context).size.height *
              .20, //Delfine o tamanho do container
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, //Centraliza de acordo com o width que esta dentro, Column: centraliza horizontalmente
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, //Centraliza de acordo com o width que esta dentro, Row: centraliza verticalmente
                children: [
                  //Image.network(
                  //  'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo-1-1.png', // Chamando a imagem através de um link
                  //   width: 40, //Define o tamanho da Logo
                  //  color: Colors.white, //Define a cor da logo
                  // ),
                  //SizedBox( //Uma caixa com um tamanho especificado. Espaço entre a logo e o nome do Usuário
                  // width: 10, //largura da caixa
                  // ),
                  Text(
                    'Olá, Lucas', //Propriedade de Texto
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        //Estilização do texto
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(children: [
                    Container(
                      child: olho,
                    ),
                    SizedBox(
                      //Uma caixa com um tamanho especificado. Espaço entre a logo e o nome do Usuário
                      width: 20, //largura da caixa
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.purple[700],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        //Widget de Icones
                        Icons
                            .settings, //verifica de o  showMenu vindo do construtor é falso ou verdadeiro e muda o icone de acordo com o clique
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ]),
                ],
              ),
              //Icon( //Widget de Icones
              //!showMenu ? Icons.expand_more : Icons.expand_less, //verifica de o  showMenu vindo do construtor é falso ou verdadeiro e muda o icone de acordo com o clique
              //color: Colors.white,
              //),
            ],
          ),
        ),
      ],
    );
  }
}
