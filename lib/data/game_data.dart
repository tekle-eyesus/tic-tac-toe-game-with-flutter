import 'package:flutter/material.dart';

class GameData extends ChangeNotifier {
  List<String> _gameTokenList = [
    "n",
    "n",
    "n",
    "n",
    "n",
    "n",
    "n",
    "n",
    "n",
  ];

  get gameTokenList => _gameTokenList;

  void inserValue(String value, int index) {
    _gameTokenList[index] = value;
    print("you enterd : ${_gameTokenList[index]} at index $index");
    notifyListeners();
  }

  void chooseWinner() {
    for (int i = 0; i < _gameTokenList.length; i++) {
      print("elements in list :- ${_gameTokenList[i]}");
    }
    notifyListeners();
  }
}
