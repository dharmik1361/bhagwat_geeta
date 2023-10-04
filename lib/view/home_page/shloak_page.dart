import 'package:bhagwat_geeta/model/GeetaChapter/chapter.dart';
import 'package:bhagwat_geeta/model/GeetaChapter/shlokmodel.dart';
import 'package:bhagwat_geeta/provider/page_select.dart';
import 'package:bhagwat_geeta/view/chapter_page/ch1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class Shloak extends StatefulWidget {
  const Shloak({super.key});

  @override
  State<Shloak> createState() => _ShloakState();
}

class _ShloakState extends State<Shloak> {
  List<ChapterName> chapter = [];
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadChapterNames();
  }

  // Future<void> loadVerse(int chapterNumber,int shloak) async {
  //   try {
  //     final String loadString1 = await rootBundle.loadString("assets/json/Shlok/$chapterNumber/$shloak/index.json");
  //     final List<Verse> verses = verseFromJson(loadString1);
  //     setState(() {
  //     verse = verses;
  //     });
  //   } catch (e) {
  //     print("error loading verse: $e");
  //   }
  // }

  Future<void> loadChapterNames() async {
    try {
      final String loadString =
          await rootBundle.loadString("assets/json/chaptersName.json");
      final List<ChapterName> chapters = chapterNameFromJson(loadString);

      setState(() {
        chapter = chapters;
      });
    } catch (e) {
      // Handle any errors here, such as file not found or JSON parsing errors
      print("Error loading chapter : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: chapter.length,
      child: Scaffold(
        backgroundColor: Color(0xffFF9F00),
        appBar: AppBar(
          backgroundColor: Color(0xffFF9F00),
          bottom: TabBar(
            isScrollable: true,
            tabs: chapter.map((chapterName) {
              return Tab(
                text:
                    "Chapter${chapterName.chapterNumber}", // Display chapter name or handle if it's null
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          children: [
            CH1(),
            CH2(),
            CH3(),
            CH4(),
            CH5(),
            CH6(),
            CH7(),
            CH8(),
            CH9(),
            CH10(),
            CH11(),
            CH12(),
            CH13(),
            CH14(),
            CH15(),
            CH16(),
            CH17(),
            CH18(),
          ],
        ),
      ),
    );
  }
}
