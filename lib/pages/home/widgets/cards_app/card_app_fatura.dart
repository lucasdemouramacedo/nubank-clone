import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CardAppFatura extends StatelessWidget {
  final bool eye;
  const CardAppFatura({Key? key, required this.eye}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double valorFaturaAtual = 5.00;
    double creditoUtilizado = 20.00;
    double limiteCredito = 100.00;
    NumberFormat formatter = NumberFormat.simpleCurrency(locale: 'pt_BR');
    var porcentagemUsada = ((100 * creditoUtilizado) / limiteCredito) / 100;
    var v = formatter.format(valorFaturaAtual);
    var limiteDisponivel = formatter.format(limiteCredito - creditoUtilizado);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Column(
        children: [
          Expanded(
            flex: 3,
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
                              'assets/icons/icons-card/1-cartao-credito.png'),
                          height: 20,
                          color: Color.fromRGBO(46, 46, 46, 1.0),
                        ),
                      ),
                      Text(
                        "Fatura atual",
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
                  padding: const EdgeInsets.fromLTRB(65, 30, 20, 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Stack(children: [
                          Row(
                            children: [
                              Text(
                                v.toString(),
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: LinearProgressIndicator(
                              value: porcentagemUsada,
                              backgroundColor: Colors.blue[700],
                              color: Colors.red[400],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Limite disponível ",
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.black54),
                            ),
                          ),
                          Text(
                            limiteDisponivel.toString(),
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,
                                  color: Color.fromRGBO(46, 46, 46, 1.0)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                    child: Text(
                      "Pagar fatura ",
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
