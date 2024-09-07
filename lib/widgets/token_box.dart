import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_game/data/game_data.dart';

class TokenBox extends StatefulWidget {
  final void Function() playerTurn;
  int playerNo;
  int boxValue;
  TokenBox(
      {super.key,
      required this.playerNo,
      required this.playerTurn,
      required this.boxValue});

  @override
  State<TokenBox> createState() => _TokenBoxState();
}

class _TokenBoxState extends State<TokenBox> {
  bool isPressed = false;
  String printtoken = "";

  void insertValue(String value, int index) {
    Provider.of<GameData>(context, listen: false).inserValue(value, index);
  }

  void isWon() {
    Provider.of<GameData>(context, listen: false).chooseWinner();
    // if (mainList[0].toString().contains(mainList[1].toString()) &&
    //     mainList[1].toString().contains(mainList[2].toString())) {
    //   print("winner!!!!!!");
    // }
  }

  void handleTokenX() {
    if (isPressed) {
      setState(() {
        printtoken = "x";
      });
      isWon();
      insertValue(printtoken, widget.boxValue);
      widget.playerTurn();
    }
  }

  void handleTokenO() {
    if (isPressed) {
      setState(() {
        printtoken = "o";
      });
      isWon();
      insertValue(printtoken, widget.boxValue);
      widget.playerTurn();
    }
  }

  void startgame() {
    print("you press no : ${widget.boxValue}");
    if (widget.playerNo == 1) {
      if (!isPressed) {
        isPressed = !isPressed;
        handleTokenO();
      }

      // playerNo = 0;
    } else {
      if (!isPressed) {
        isPressed = !isPressed;
        handleTokenX();
      }

      // playerNo = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: startgame,
      child: Container(
          margin: EdgeInsets.all(3),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: DefaultTextStyle(
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.red, fontSize: 50, fontWeight: FontWeight.bold),
            child: Text(printtoken),
          )),
    );
  }
}
