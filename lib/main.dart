import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe_game/widgets/token_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // here, Scaffold.of(context) returns null
    return Container(
        color: Colors.amber,
        child: MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              toolbarHeight: 60,
              backgroundColor: Colors.red,
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
                      color: Colors
                          .amber, //conditional color based on player turns
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
                  margin: EdgeInsets.all(4),
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
                    TokenBox(),
                    TokenBox(),
                    TokenBox(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TokenBox(),
                    TokenBox(),
                    TokenBox(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TokenBox(),
                    TokenBox(),
                    TokenBox(),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
