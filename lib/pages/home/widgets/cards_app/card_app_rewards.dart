import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardAppRewards extends StatelessWidget {
  const CardAppRewards
({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                                          'assets/icons/icons-card/3-rewards.png'),
                                      height: 25,
                                      color: Colors.purple[800],
                                    ),
                                  ),
                                  Text(
                                    "Rewards",
                                    style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25,
                                          color: Colors.purple[800]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(20, 23, 20, 0),
                                    child: Text(
                                      "Pague compras com pontos que nunca expiram.",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Color.fromRGBO(242, 213, 242, 0.5),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                    child: Text(
                      "Conhecer ",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.purple[700]),
                      ),
                    ),
                  ),
                  RotatedBox(
                    quarterTurns:1,
                    child: Icon(
                      Icons.expand_less,
                      size: 20,
                      color: Colors.purple[700],
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