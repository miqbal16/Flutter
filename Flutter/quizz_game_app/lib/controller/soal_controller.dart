import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pintar_app/controller/pertanyaan.dart';
import 'package:pintar_app/model/koleksi_soal.dart';

class SoalController {
  KoleksiSoal _koleksiSoal = KoleksiSoal();
  List<Pertanyaan> _soal = [];
  int _randomSoal = 0;
  int _totalBenar = 0;
  int _totalSalah = 0;

  void getSoal(int index) {
    _soal = _koleksiSoal.bankSoal[index];
  }

  int getTotalBenar() => _totalBenar;

  int getTotalSalah() => _totalSalah;

  void getRandomSoal() {
    _randomSoal = Random().nextInt(_soal.length);
  }

  String getPertanyaan() => _soal[_randomSoal].soal;

  String getJawaban() => _soal[_randomSoal].jawaban;

  String getImage() => _soal[_randomSoal].imageSoal;

  String getPilihan1() => _soal[_randomSoal].pilihan1;

  String getPilihan2() => _soal[_randomSoal].pilihan2;

  String getPilihan3() => _soal[_randomSoal].pilihan3;

  String getPilihan4() => _soal[_randomSoal].pilihan4;

  void cekSoal({BuildContext context, Object destination}) {
    if (_soal.isEmpty) {
      Navigator.of(context).pop();
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => destination));
    }
  }

  bool checkImage() => (getImage() != null) ? true : false;

  List<Pertanyaan> get soal => _soal;

  void _hapusSoal() {
    _soal.removeAt(_randomSoal);
  }

  void checkJawaban(String pilihan, String jawaban, List<Icon> keepScore) {
    if (pilihan == jawaban) {
      _totalBenar++;
      keepScore.add(
        Icon(
          Icons.check,
          color: Colors.green[600],
        ),
      );
      _hapusSoal();
    } else {
      _totalSalah++;
      keepScore.add(
        Icon(
          Icons.close,
          color: Colors.red[600],
        ),
      );
      _hapusSoal();
    }
  }
}
