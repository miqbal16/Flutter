import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screen/category_screen.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber.shade600,
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Column(
              children: [
                Text(
                  'PINTAR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 85.0,
                    letterSpacing: 15.0,
                    fontFamily: 'Bubblegum',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Menyenangkan dan Bikin Pintar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 200.0,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith(
                      (states) => StadiumBorder()),
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.blue.shade400),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategoryScreen()));
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'PLAY',
                    style: TextStyle(
                      letterSpacing: 8.0,
                      fontSize: 23.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith(
                      (states) => StadiumBorder()),
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.red.shade600),
                ),
                onPressed: () {
                  setState(() {
                    SystemNavigator.pop();
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'EXIT',
                    style: TextStyle(
                      letterSpacing: 8.0,
                      fontSize: 23.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
