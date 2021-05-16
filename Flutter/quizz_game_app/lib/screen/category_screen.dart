import 'package:flutter/material.dart';
import 'package:pintar_app/screen/play_screen.dart';

enum CATEGORY_SOAL {
  sejarah_indonesia,
  pengetahuan_umum,
  olahraga,
  entertaiment
}

class CategoryScreen extends StatelessWidget {
  // create box category
  Expanded boxCategory(
      {String nameCategory,
      Color color,
      EdgeInsets padding,
      String image,
      @required BuildContext context,
      Object destination}) {
    return Expanded(
      child: Padding(
        padding: padding,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => destination));
          },
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(18.0),
            ),
            width: 200,
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage(image),
                  width: 110,
                  height: 130,
                ),
                Text(
                  nameCategory,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade600,
      appBar: AppBar(
        title: Text('CATEGORY'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.amber.shade600,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                boxCategory(
                    image: 'assets/images/globe.png',
                    nameCategory: 'PENGATAHUAN UMUM',
                    color: Colors.pinkAccent,
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 10.0,
                      bottom: 10.0,
                    ),
                    destination: PlayScreen(
                        categorySoal: CATEGORY_SOAL.pengetahuan_umum.index),
                    context: context),
                boxCategory(
                  image: 'assets/images/history.png',
                  nameCategory: 'SEJARAH INDONESIA',
                  color: Colors.green,
                  padding: const EdgeInsets.only(
                      left: 10.0, bottom: 10.0, right: 20.0),
                  context: context,
                  destination: PlayScreen(
                    categorySoal: CATEGORY_SOAL.sejarah_indonesia.index,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                boxCategory(
                    image: 'assets/images/olahraga.png',
                    nameCategory: 'OLAHRAGA',
                    color: Colors.blue,
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      top: 10.0,
                      right: 10.0,
                      bottom: 20.0,
                    ),
                    destination: PlayScreen(
                      categorySoal: CATEGORY_SOAL.olahraga.index,
                    ),
                    context: context),
                boxCategory(
                    image: 'assets/images/entertaiment.png',
                    nameCategory: 'ENTERTAIMENT',
                    color: Colors.deepPurple.shade300,
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 10.0,
                      right: 20.0,
                      bottom: 20.0,
                    ),
                    destination: PlayScreen(
                      categorySoal: CATEGORY_SOAL.entertaiment.index,
                    ),
                    context: context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
