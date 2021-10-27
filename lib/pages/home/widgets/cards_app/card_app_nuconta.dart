import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CardAppNuconta extends StatelessWidget {
  final bool eye;
  const CardAppNuconta({Key? key, required this.eye}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NumberFormat formatter = NumberFormat.simpleCurrency(locale: 'pt_BR');
    var nu = formatter.format(5000.00);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 18, 0),
                          child: Image(
                            image: AssetImage(
                                'assets/icons/icons-card/2-nuconta.png'),
                            height: 20,
                            color: Color.fromRGBO(46, 46, 46, 1.0),
                          ),
                        ),
                        Text(
                          "NuConta",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Color.fromRGBO(46, 46, 46, 1.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(65, 23, 20, 0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                          child: Stack(children: [
                            Row(
                              children: [
                                Text(
                                  nu.toString(),
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 30,
                                        color: Color.fromRGBO(46, 46, 46, 1.0)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 200,
                                  height: 30,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: !eye
                                          ? Color.fromRGBO(235, 235, 235, 0.0)
                                          : Color.fromRGBO(235, 235, 235, 1.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                        ),
                        Row(
                          children: [
                            Text(
                              "Saldo disponível ",
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: Colors.black54),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey[200],
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                    child: Text(
                      "Suas movimentações ",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  RotatedBox(
                    quarterTurns:1,
                    child: Icon(
                      Icons.expand_less,
                      size: 20,
                      color: Colors.black54,
                      ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
