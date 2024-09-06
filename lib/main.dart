import 'package:flutter/material.dart';
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
        home: Column(
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
    );
  }
}
