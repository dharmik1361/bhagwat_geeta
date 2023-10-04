import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:bhagwat_geeta/view/home_page/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => GeetaHome(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF9F00),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/image/MB.jpg")),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              "श्रीमद भागवत गीता",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                      "यदा यदा हि धर्मस्य ग्लानिर्भवति भारत।\nअभ्युत्थानमधर्मस्य तदात्मानं सृजाम्यहम्\n\nपरित्राणाय साधूनां विनाशाय च दुष्कृताम्\nधर्मसंस्थापनार्थाय सम्भवामि युगे युगे",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))),
            )
          ],
        ),
      ),
    );
  }
}
