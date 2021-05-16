import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[500],
        appBar: AppBar(
          backgroundColor: Colors.cyan[500],
          title: Center(
            child: Text(
              'Daduku',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23.0,
                letterSpacing: 8.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Oswald',
              ),
            ),
          ),
        ),
        body: MyDice(),
      ),
    ),
  );
}

class MyDice extends StatefulWidget {
  @override
  _MyDiceState createState() => _MyDiceState();
}

class _MyDiceState extends State<MyDice> {
  int daduKiri = 1;
  int daduKanan = 1;

  void kocokDadu() {
    daduKiri = new Random().nextInt(6) + 1;
    daduKanan = new Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400.0,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 16.0),
                      child: Image.asset('images/dice$daduKiri.png'),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 16.0),
                      child: Image.asset(
                        'images/dice$daduKanan.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.symmetric(
                              vertical: 28.0, horizontal: 10.0),
                        ),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.amber[800]),
                      ),
                      onPressed: () {
                        setState(() {
                          kocokDadu();
                        });
                      },
                      child: Text(
                        'Kocok Dadu',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
