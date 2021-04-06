import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text("O'yin ichida o'yin"),
        centerTitle: true,
      ),
      body: DiceApp(),
    ),
  ));
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftImageNumber = 3;
  int rigImageNumber = 4;

  void changeDicee() {
    setState(() {
      leftImageNumber = Random().nextInt(6) + 1;
      rigImageNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
                onPressed: () {
                  changeDicee();
                },
                child: Image.asset('images/dice$leftImageNumber.png')),
          ),
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
                onPressed: () {
                  changeDicee();
                },
                child: Image.asset('images/dice$rigImageNumber.png')),
          )
        ],
        
      ),
    );
  }
}
