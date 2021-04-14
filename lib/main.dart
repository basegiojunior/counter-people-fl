import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de pessoinhas",
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Pessoas: 0",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text("Pode entrar!",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30))
        ],
      )));
}
