import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardFooterApp extends StatelessWidget {
  final String textCard;
  final String icone;
  final VoidCallback onTap;

  final bool cor;
  const CardFooterApp(
      {Key? key,
      required this.textCard,
      required this.icone,
      required this.onTap,
      required this.cor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.purple[700],
        ),
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: onTap,
            splashColor: Colors.purple[600],
            splashFactory: InkRipple.splashFactory,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.height * 0.15,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Container(
                            child: Image(
                              image: AssetImage(icone),
                              height: 26,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                              child: Text(
                                textCard, //Propriedade de Texto
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: GoogleFonts.hindSiliguri(
                                  textStyle: TextStyle(
                                    //Estilização do texto
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.white,
                                    height: 1.1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
