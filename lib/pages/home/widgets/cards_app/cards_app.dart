import 'package:flutter/material.dart';
import 'package:nubank_ui/pages/home/widgets/cards_app/card_app_fatura.dart';
import 'package:nubank_ui/pages/home/widgets/cards_app/card_app_nuconta.dart';
import 'package:nubank_ui/pages/home/widgets/cards_app/card_app_rewards.dart';
import 'card_app.dart';

class CardsApp extends StatelessWidget {
  final double top;
  final bool eye;
  const CardsApp({Key? key, required this.top, required this.eye})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      top: top,
      height: MediaQuery.of(context).size.height * 0.62,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(), //animação
        child: Column(
          //onPageChanged: onChanged, //recebe a pagina (CardApp()) sempre que muda
          //physics: BouncingScrollPhysics(), //animação
          children: [
            CardApp(
              height: MediaQuery.of(context).size.height * 0.30,
              widget: CardAppFatura(
                eye: eye,
              ),
            ),
            CardApp(
              height: MediaQuery.of(context).size.height * 0.25,
              widget: CardAppNuconta(
                eye: eye,
              ),
            ),
            CardApp(
              height: MediaQuery.of(context).size.height * 0.25,
              widget: CardAppRewards(),
            ),
          ],
        ),
      ),
    );
  }
}
