import 'package:flutter/material.dart';

class TokenBox extends StatefulWidget {
  const TokenBox({super.key});

  @override
  State<TokenBox> createState() => _TokenBoxState();
}

class _TokenBoxState extends State<TokenBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          child: Text("X"),
        ));
  }
}
