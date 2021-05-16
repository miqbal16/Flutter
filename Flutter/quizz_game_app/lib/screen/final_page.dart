import 'package:flutter/material.dart';

import '../main.dart';

class FinalPage extends StatelessWidget {
  int totalBenar;
  int totalSalah;

  FinalPage({this.totalBenar, this.totalSalah});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[600],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 14.0, horizontal: 18.0),
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text(
                  'GAME OVER',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    fontFamily: 'Bubblegum',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Image.asset(
              'assets/images/olahraga.png',
              width: 80,
              height: 80,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'You are Genius',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 14.0, horizontal: 18.0),
                  decoration: BoxDecoration(
                    color: Colors.green.shade500,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    'BENAR: $totalBenar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 14.0, horizontal: 18.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    'SALAH: $totalSalah',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 130.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.pinkAccent)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 14.0, horizontal: 18.0),
                child: Text(
                  'BACK TO MENU',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
