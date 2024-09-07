import 'package:flutter/material.dart';

class TokenBox extends StatefulWidget {
  final void Function() playerTurn;
  int playerNo;
  TokenBox({super.key, required this.playerNo, required this.playerTurn});

  @override
  State<TokenBox> createState() => _TokenBoxState();
}

class _TokenBoxState extends State<TokenBox> {
  bool isPressed = false;
  String printtoken = "";

  void handleTokenX() {
    if (isPressed) {
      setState(() {
        printtoken = "x";
      });
      widget.playerTurn();
    }
  }

  void handleTokenO() {
    print("hello fromnew o");
    if (isPressed) {
      setState(() {
        printtoken = "o";
      });
      widget.playerTurn();
    }
  }

  void startgame() {
    print("game started");
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
    print("my tocke is  ${widget.playerNo}");
    print("the box $isPressed");
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
