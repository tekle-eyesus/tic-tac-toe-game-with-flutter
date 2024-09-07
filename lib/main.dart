import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_game/data/game_data.dart';
import 'package:tic_tac_toe_game/screens/game_home.dart';
import 'package:tic_tac_toe_game/widgets/token_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // here, Scaffold.of(context) returns null
    return ChangeNotifierProvider(
      create: (context) => GameData(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GameHome(),
      ),
    );
  }
}
