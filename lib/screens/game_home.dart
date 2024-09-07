import 'package:flutter/material.dart';
import 'package:tic_tac_toe_game/widgets/token_box.dart';

class GameHome extends StatefulWidget {
  const GameHome({super.key});

  @override
  State<GameHome> createState() => _GameHomeState();
}

class _GameHomeState extends State<GameHome> {
  bool isPressed = false;
  String printtoken = "";
  int playerNo = 0;

  void handleTokenX() {
    print("hello fromnew x");
    setState(() {
      isPressed = !isPressed;
      printtoken = "x";
      playerNo = 1;
    });
  }

  void handleTokenO() {
    print("hello fromnew o");
    setState(() {
      isPressed = !isPressed;
      printtoken = "o";
      playerNo = 0;
    });
  }

  void startgame() {
    print("game started");
    if (playerNo == 1) {
      handleTokenO();
      playerNo = 0;
    } else {
      handleTokenX();
      playerNo = 1;
    }
  }

  void playerTurn() {
    setState(() {
      if (playerNo == 1) {
        playerNo = 0;
      } else {
        playerNo = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("paseed tocken : $printtoken");
    return Container(
        color: Colors.amber,
        child: MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              toolbarHeight: 60,
              backgroundColor: Colors.blue,
              title: SizedBox(
                width: 500,
                child: Row(
                  children: [
                    Icon(
                      Icons.gamepad,
                      color: Colors.amber,
                      size: 50,
                    ),
                    Container(
                      margin: EdgeInsets.all(6),
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                          color:
                              (playerNo == 1) ? Colors.amber : Colors.lightBlue,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Text(
                            "player : 1",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "O",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              actions: [
                Container(
                  margin: EdgeInsets.all(6),
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: (playerNo == 0)
                          ? Colors.amber
                          : Colors
                              .lightBlue, //conditional color based on player turns
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Text(
                        "player : 2",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "X",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 17),
                  child: Icon(
                    color: Colors.amber,
                    Icons.gamepad,
                    size: 50,
                  ),
                ),
              ],
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // TokenBox(),
                    // TokenBox(),
                    // TokenBox(),

                    TokenBox(
                      playerNo: playerNo,
                      playerTurn: playerTurn,
                    ),
                    TokenBox(
                      playerNo: playerNo,
                      playerTurn: playerTurn,
                    ),
                    TokenBox(
                      playerNo: playerNo,
                      playerTurn: playerTurn,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TokenBox(
                      playerNo: playerNo,
                      playerTurn: playerTurn,
                    ),
                    TokenBox(
                      playerNo: playerNo,
                      playerTurn: playerTurn,
                    ),
                    TokenBox(
                      playerNo: playerNo,
                      playerTurn: playerTurn,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // TokenBox(),
                    // TokenBox(),
                    // TokenBox(),
                    TokenBox(
                      playerNo: playerNo,
                      playerTurn: playerTurn,
                    ),
                    TokenBox(
                      playerNo: playerNo,
                      playerTurn: playerTurn,
                    ),
                    TokenBox(
                      playerNo: playerNo,
                      playerTurn: playerTurn,
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
