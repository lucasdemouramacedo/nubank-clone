import 'package:flutter/material.dart';
import 'package:nubank_ui/pages/home/widgets/cards_footer/card_footer_app.dart';

class CardsFooterApp extends StatefulWidget {
  final double top;
  const CardsFooterApp({Key? key, required this.top}) : super(key: key);

  @override
  _CardsFooterAppState createState() => _CardsFooterAppState();
}

class _CardsFooterAppState extends State<CardsFooterApp> {

  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
 

  }
  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }


  @override
  Widget build(BuildContext context) {
    final titles = ['Pix','Pagar','Indicar amigos','Transferir','Depositar','Ajuste','Empréstimos','Cartão virtual','Recarga','Bloquear cartão','Cobrar','Doação','Ajuda'];
    final icones = [
      'assets/icons/icons-footer/1-pix.png',
      'assets/icons/icons-footer/2-pagar.png',
      'assets/icons/icons-footer/3-indicar.png',
      'assets/icons/icons-footer/4-transferir.png',
      'assets/icons/icons-footer/5-depositar.png',
      'assets/icons/icons-footer/12-ajuste.png',
      'assets/icons/icons-footer/6-emprestimos.png',
      'assets/icons/icons-footer/7-cartao-virtual.png',
      'assets/icons/icons-footer/8-recarga.png',
      'assets/icons/icons-footer/9-bloquear.png',
      'assets/icons/icons-footer/10-cobrar.png',
      'assets/icons/icons-footer/6-emprestimos.png',
      'assets/icons/icons-footer/11-ajuda.png',
      ];
    return Positioned(
      top: widget.top,
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        
          scrollDirection: Axis.horizontal,
          itemCount: titles.length,
          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
          physics: BouncingScrollPhysics(),
          itemBuilder: (_, index) {
            return CardFooterApp(
              textCard: titles[index],
              icone: icones[index],
              onTap: () => _onSelected(index),
              cor: _selectedIndex == index ? true : false,
              );
          }),
    );
  }
}








