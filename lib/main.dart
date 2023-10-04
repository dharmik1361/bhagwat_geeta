import 'package:bhagwat_geeta/provider/page_select.dart';
import 'package:bhagwat_geeta/view/gita_splash.dart';
import 'package:bhagwat_geeta/view/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Geeta());
}

class Geeta extends StatefulWidget {
  const Geeta({super.key});

  @override
  State<Geeta> createState() => _GeetaState();
}

class _GeetaState extends State<Geeta> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ChapterProvide(),),
    ],builder: (context, child) {
      return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/":(context) => Splash(),
          "/home":(context) => GeetaHome(),
        },
      );
    },
    );
  }
}


