import 'package:bhagwat_geeta/model/GeetaChapter/shlokmodel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CH1 extends StatefulWidget {
  const CH1({super.key});

  @override
  State<CH1> createState() => _CH1State();
}

class _CH1State extends State<CH1> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch1.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: CarouselSlider(
                          items: [
                            Text("English:\n${verse[index].gambir?.et}"),
                            Text("Hindi:\n${verse[index].tej?.ht}")
                          ],
                          options: CarouselOptions(
                            height: 160,
                            enlargeCenterPage: true,
                            autoPlay: false,
                            enableInfiniteScroll: false,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

// Chapter 2

class CH2 extends StatefulWidget {
  const CH2({super.key});

  @override
  State<CH2> createState() => _CH2State();
}

class _CH2State extends State<CH2> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch2.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

// Chapter 3

class CH3 extends StatefulWidget {
  const CH3({super.key});

  @override
  State<CH3> createState() => _CH3State();
}

class _CH3State extends State<CH3> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch3.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//Chapter 4

class CH4 extends StatefulWidget {
  const CH4({super.key});

  @override
  State<CH4> createState() => _CH4State();
}

class _CH4State extends State<CH4> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch4.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//Chapter 5

class CH5 extends StatefulWidget {
  const CH5({super.key});

  @override
  State<CH5> createState() => _CH5State();
}

class _CH5State extends State<CH5> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch5.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//Chapter 6

class CH6 extends StatefulWidget {
  const CH6({super.key});

  @override
  State<CH6> createState() => _CH6State();
}

class _CH6State extends State<CH6> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch6.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//Chapter 7

class CH7 extends StatefulWidget {
  const CH7({super.key});

  @override
  State<CH7> createState() => _CH7State();
}

class _CH7State extends State<CH7> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch7.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//Chapter 8

class CH8 extends StatefulWidget {
  const CH8({super.key});

  @override
  State<CH8> createState() => _CH8State();
}

class _CH8State extends State<CH8> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch8.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//Chapter 9

class CH9 extends StatefulWidget {
  const CH9({super.key});

  @override
  State<CH9> createState() => _CH9State();
}

class _CH9State extends State<CH9> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch9.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//Chapter 10

class CH10 extends StatefulWidget {
  const CH10({super.key});

  @override
  State<CH10> createState() => _CH10State();
}

class _CH10State extends State<CH10> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch10.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//Chapter 11

class CH11 extends StatefulWidget {
  const CH11({super.key});

  @override
  State<CH11> createState() => _CH11State();
}

class _CH11State extends State<CH11> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch11.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//chapter 12

class CH12 extends StatefulWidget {
  const CH12({super.key});

  @override
  State<CH12> createState() => _CH12State();
}

class _CH12State extends State<CH12> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch12.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//chapter 13

class CH13 extends StatefulWidget {
  const CH13({super.key});

  @override
  State<CH13> createState() => _CH13State();
}

class _CH13State extends State<CH13> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch13.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//Chapter 14

class CH14 extends StatefulWidget {
  const CH14({super.key});

  @override
  State<CH14> createState() => _CH14State();
}

class _CH14State extends State<CH14> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch14.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//chapter 15

class CH15 extends StatefulWidget {
  const CH15({super.key});

  @override
  State<CH15> createState() => _CH15State();
}

class _CH15State extends State<CH15> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse();
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch15.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//chapter 16

class CH16 extends StatefulWidget {
  const CH16({super.key});

  @override
  State<CH16> createState() => _CH16State();
}

class _CH16State extends State<CH16> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch16.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//chapter 17

class CH17 extends StatefulWidget {
  const CH17({super.key});

  @override
  State<CH17> createState() => _CH17State();
}

class _CH17State extends State<CH17> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch17.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

//Chapter 18

class CH18 extends StatefulWidget {
  const CH18({super.key});

  @override
  State<CH18> createState() => _CH18State();
}

class _CH18State extends State<CH18> {
  List<Verse> verse = [];

  @override
  void initState() {
    super.initState();
    loadVerse(); // Load Chapter 1 with 47 verses
  }

  Future<void> loadVerse() async {
    var loadString2 = await rootBundle.loadString("assets/json/ch18.json");
    setState(() {
      verse = verseFromJson(loadString2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: verse.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Chapter:-${verse[index].chapter} Verse:-${verse[index].verse}"),
                      Text(
                        "Sanskrit:\n${verse[index].slok}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Text("English:\n${verse[index].gambir?.et}"),
                          Text("Hindi:\n${verse[index].tej?.ht}")
                        ],
                        options: CarouselOptions(
                          height: 120,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}