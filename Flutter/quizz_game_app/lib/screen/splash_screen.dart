import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pintar_app/main.dart';

void main() {
  return runApp(Screen());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber.shade600,
        body: PageScreen(),
      ),
    );
  }
}

class PageScreen extends StatefulWidget {
  @override
  _PageScreenState createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyApp()),
          (Route route) => false);
    });

    return Center(
      child: Text(
        'PINTAR',
        style: TextStyle(
          color: Colors.white,
          fontSize: 60.0,
          fontFamily: 'ZenDots',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
