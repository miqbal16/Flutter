import 'package:flutter/material.dart';
import 'package:pintar_app/controller/soal_controller.dart';
import 'package:pintar_app/model/koleksi_soal.dart';
import 'package:pintar_app/screen/final_page.dart';

class PlayScreen extends StatelessWidget {
  int categorySoal;
  PlayScreen({this.categorySoal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade600,
      body: SafeArea(
        child: PageGame(
          categorySoal: categorySoal,
        ),
      ),
    );
  }
}

class PageGame extends StatefulWidget {
  int categorySoal;
  PageGame({this.categorySoal});

  @override
  _PageGameState createState() => _PageGameState(categorySoal: categorySoal);
}

class _PageGameState extends State<PageGame> {
  int categorySoal;

  _PageGameState({this.categorySoal});

  var tabungSoal = KoleksiSoal();
  var gamePlay = SoalController();
  int numberSoal = 1;
  List<Icon> keepScore = [];

  Padding buttonChoice({EdgeInsets padding, String pilihan}) {
    return Padding(
      padding: padding,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            gamePlay.checkJawaban(pilihan, gamePlay.getJawaban(), keepScore);
            gamePlay.cekSoal(
                context: context,
                destination: FinalPage(
                  totalBenar: gamePlay.getTotalBenar(),
                  totalSalah: gamePlay.getTotalSalah(),
                ));
            numberSoal++;
          });
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith((states) => StadiumBorder()),
          backgroundColor: MaterialStateProperty.resolveWith(
              (states) => Colors.teal.shade400),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            pilihan,
            style: TextStyle(
              color: Colors.white,
              fontSize: 21.0,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int totalSoal = tabungSoal.bankSoal[categorySoal].length;
    gamePlay.getSoal(categorySoal);
    gamePlay.getRandomSoal();

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'RESULT: ',
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.blue[600],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Bubblegum'),
              ),
              Row(
                children: keepScore,
              ),
            ],
          ),
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                if (gamePlay.checkImage())
                  Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(gamePlay.getImage())),
                      ),
                    ),
                  ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  (numberSoal < totalSoal)
                      ? "SOAL KE-$numberSoal"
                      : "SOAL FINAL",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade700,
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      gamePlay.getPertanyaan(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: buttonChoice(
              padding:
                  const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0),
              pilihan: gamePlay.getPilihan1(),
            ),
          ),
          Expanded(
            child: buttonChoice(
              padding:
                  const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0),
              pilihan: gamePlay.getPilihan2(),
            ),
          ),
          Expanded(
            child: buttonChoice(
              padding:
                  const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0),
              pilihan: gamePlay.getPilihan3(),
            ),
          ),
          Expanded(
            child: buttonChoice(
              padding:
                  const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0),
              pilihan: gamePlay.getPilihan4(),
            ),
          ),
        ],
      ),
    );
  }
}
