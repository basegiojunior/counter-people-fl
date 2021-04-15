import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Contador de pessoinhas", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 1;
  String _infoText = "Pode entrar!";

  void _changePeple(int delta) {
    setState(() {
      _people += delta;

      if (_people < 0) {
        _infoText = "Mundo invertido?";
      } else if (_people <= 10) {
        _infoText = "Pode entrar!";
      } else {
        _infoText = "Lotado!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_people",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextButton(
                      onPressed: () {
                        _changePeple(1);
                      },
                      child: Text(
                        "+1",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextButton(
                      onPressed: () {
                        _changePeple(-1);
                      },
                      child: Text(
                        "-1",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )),
                )
              ],
            ),
            Text(_infoText,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30))
          ],
        ),
      ],
    );
  }
}
