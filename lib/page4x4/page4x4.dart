import 'package:flutter/material.dart';
import 'package:jogo_da_velha/page4x4/page_utils_4x4.dart';
import 'package:jogo_da_velha/utils/tuple.dart';
import 'package:jogo_da_velha/utils/win_message.dart';

class Tabuleiro4x4 extends StatefulWidget {
  const Tabuleiro4x4({Key? key}) : super(key: key);

  @override
  State<Tabuleiro4x4> createState() => _Tabuleiro4x4State();
}

class _Tabuleiro4x4State extends State<Tabuleiro4x4> {
  int indexPlayerOne = 0;
  int indexPlayerTwo = 0;
  List<Tuple> playerOneChoices = [];
  List<Tuple> playerTwoChoices = [];
  List<List<bool>> checkBoxValues =
      List.generate(4, (_) => List.generate(4, (_) => false));
  List<String> players = List.generate(2, (index) => "Player ${index + 1}");
  int currentPlayer = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xff854800),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        title: const Text("Tabuleiro 4x4"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsetsDirectional.only(top: 100, bottom: 50),
            child: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: "É a vez do ",
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  TextSpan(
                    text: players.elementAt(currentPlayer),
                    style: TextStyle(
                      fontSize: 25.0,
                      color: currentPlayer == 0 ? Color(0xffFF7F00) : Color(0xff6A3800),
                    ),
                  ),
                ],
              ),
            ),
          ),
          for (int i = 0; i < 4; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (int j = 0; j < 4; j++)
                  GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: Checkbox(
                      activeColor:
                          currentPlayer == 0 ? const Color(0xffFF7F00) : const Color(0xff6A3800),
                      value: checkBoxValues[i][j],
                      onChanged: (bool? value) => {
                        setState(() {
                          if (checkBoxValues[i][j] == false) {
                            checkBoxValues[i][j] = value!;
                          }
                          if (currentPlayer == 0) {
                            playerOneChoices.add(Tuple(i, j));
                            if (checkWinner4x4(playerOneChoices)) {
                              showWinnerMessage(
                                  "Parabéns ${players.elementAt(currentPlayer)} venceu!", context);
                            } else {
                              indexPlayerOne += 1;
                              currentPlayer += 1;
                            }
                          } else {
                            playerTwoChoices.add(Tuple(i, j));
                            if (checkWinner4x4(playerTwoChoices)) {
                              showWinnerMessage(
                                  "Parabéns ${players.elementAt(currentPlayer)} venceu!", context);
                            } else {
                              indexPlayerTwo += 1;
                              currentPlayer -= 1;
                            }
                          }
                        }),
                      },
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
