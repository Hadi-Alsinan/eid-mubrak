import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          HexColor("2155CD"),
          HexColor("0AA1DD"),
          HexColor("79DAE8"),
          HexColor("E8F9FD"),
        ],
      )),
      child: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 242),
                    Image.asset(
                      'asset/dash.png',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
                Text("!أهنيئكم بحلول عيد الفطر المبارك",
                    textScaleFactor: 0.5,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cairo(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    )),
                Text("كل عام و أنتم بخير",
                    textScaleFactor: 0.45,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cairo(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(width: 30),
                    Text("هادي السنان",
                        textScaleFactor: 0.4,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        )),
                  ],
                )
              ],
            ),
            height: 275,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white, width: 3.0)),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Lottie.asset(
            'asset/fireworks.json',
            width: 700,
            height: 650,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Lottie.asset(
            'asset/fireworks.json',
            width: 700,
            height: 20000,
          ),
        ),
      ]),
    ));
  }
}
