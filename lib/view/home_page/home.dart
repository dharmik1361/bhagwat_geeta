import 'package:bhagwat_geeta/view/home_page/shloak_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../model/GeetaChapter/chapter.dart';

class GeetaHome extends StatefulWidget {
  const GeetaHome({Key? key}) : super(key: key);

  @override
  State<GeetaHome> createState() => _GeetaHomeState();
}

class _GeetaHomeState extends State<GeetaHome> {
  List<ChapterName> data = [];

  void geeta() async {
    var loadString =
        await rootBundle.loadString("assets/json/chaptersName.json");
    setState(() {
      data = chapterNameFromJson(loadString);
    });
  }

  @override
  void initState() {
    super.initState();
    geeta();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc80),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Color(0xffFF9F00),
              title: Text("Bhagwat Geeta"),
              expandedHeight: MediaQuery.of(context).size.height * 0.2,
              // floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background:
                    Image.asset("assets/image/BG.jpg", fit: BoxFit.cover),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text(data[index]?.name ?? ""),
                    leading: Image.asset("assets/image/BG.jpg"),
                    subtitle:
                        Text("  ${data[index]?.chapterNumber?.toString() ?? ""} ${data[index].meaning?.hi}"),
                    trailing: IconButton(
                      icon: Icon(Icons.navigate_next),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Shloak(),));
                      },
                    ),
                    shape: UnderlineInputBorder(),
                  );
                },
                childCount: data.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
