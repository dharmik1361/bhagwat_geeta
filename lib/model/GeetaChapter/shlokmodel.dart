// To parse this JSON data, do
//
//     final verse = verseFromJson(jsonString);

import 'dart:convert';

List<Verse> verseFromJson(String str) => List<Verse>.from(json.decode(str).map((x) => Verse.fromJson(x)));

String verseToJson(List<Verse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Verse {
  String? id;
  int? chapter;
  int? verse;
  String? slok;
  String? transliteration;
  Tej? tej;
  Siva? siva;
  Adi? purohit;
  Chinmay? chinmay;
  Adi? san;
  Adi? adi;
  Adi? gambir;
  Anand? madhav;
  Anand? anand;
  Rams? rams;
  Abhinav? raman;
  Abhinav? abhinav;
  Abhinav? sankar;
  Anand? jaya;
  Anand? vallabh;
  Anand? ms;
  Anand? srid;
  Anand? dhan;
  Anand? venkat;
  Anand? puru;
  Anand? neel;

  Verse({
    this.id,
    this.chapter,
    this.verse,
    this.slok,
    this.transliteration,
    this.tej,
    this.siva,
    this.purohit,
    this.chinmay,
    this.san,
    this.adi,
    this.gambir,
    this.madhav,
    this.anand,
    this.rams,
    this.raman,
    this.abhinav,
    this.sankar,
    this.jaya,
    this.vallabh,
    this.ms,
    this.srid,
    this.dhan,
    this.venkat,
    this.puru,
    this.neel,
  });

  factory Verse.fromJson(Map<String, dynamic> json) => Verse(
    id: json["_id"],
    chapter: json["chapter"],
    verse: json["verse"],
    slok: json["slok"],
    transliteration: json["transliteration"],
    tej: json["tej"] == null ? null : Tej.fromJson(json["tej"]),
    siva: json["siva"] == null ? null : Siva.fromJson(json["siva"]),
    purohit: json["purohit"] == null ? null : Adi.fromJson(json["purohit"]),
    chinmay: json["chinmay"] == null ? null : Chinmay.fromJson(json["chinmay"]),
    san: json["san"] == null ? null : Adi.fromJson(json["san"]),
    adi: json["adi"] == null ? null : Adi.fromJson(json["adi"]),
    gambir: json["gambir"] == null ? null : Adi.fromJson(json["gambir"]),
    madhav: json["madhav"] == null ? null : Anand.fromJson(json["madhav"]),
    anand: json["anand"] == null ? null : Anand.fromJson(json["anand"]),
    rams: json["rams"] == null ? null : Rams.fromJson(json["rams"]),
    raman: json["raman"] == null ? null : Abhinav.fromJson(json["raman"]),
    abhinav: json["abhinav"] == null ? null : Abhinav.fromJson(json["abhinav"]),
    sankar: json["sankar"] == null ? null : Abhinav.fromJson(json["sankar"]),
    jaya: json["jaya"] == null ? null : Anand.fromJson(json["jaya"]),
    vallabh: json["vallabh"] == null ? null : Anand.fromJson(json["vallabh"]),
    ms: json["ms"] == null ? null : Anand.fromJson(json["ms"]),
    srid: json["srid"] == null ? null : Anand.fromJson(json["srid"]),
    dhan: json["dhan"] == null ? null : Anand.fromJson(json["dhan"]),
    venkat: json["venkat"] == null ? null : Anand.fromJson(json["venkat"]),
    puru: json["puru"] == null ? null : Anand.fromJson(json["puru"]),
    neel: json["neel"] == null ? null : Anand.fromJson(json["neel"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "chapter": chapter,
    "verse": verse,
    "slok": slok,
    "transliteration": transliteration,
    "tej": tej?.toJson(),
    "siva": siva?.toJson(),
    "purohit": purohit?.toJson(),
    "chinmay": chinmay?.toJson(),
    "san": san?.toJson(),
    "adi": adi?.toJson(),
    "gambir": gambir?.toJson(),
    "madhav": madhav?.toJson(),
    "anand": anand?.toJson(),
    "rams": rams?.toJson(),
    "raman": raman?.toJson(),
    "abhinav": abhinav?.toJson(),
    "sankar": sankar?.toJson(),
    "jaya": jaya?.toJson(),
    "vallabh": vallabh?.toJson(),
    "ms": ms?.toJson(),
    "srid": srid?.toJson(),
    "dhan": dhan?.toJson(),
    "venkat": venkat?.toJson(),
    "puru": puru?.toJson(),
    "neel": neel?.toJson(),
  };
}

class Abhinav {
  AbhinavAuthor? author;
  String? sc;
  String? et;
  String? ht;

  Abhinav({
    this.author,
    this.sc,
    this.et,
    this.ht,
  });

  factory Abhinav.fromJson(Map<String, dynamic> json) => Abhinav(
    author: abhinavAuthorValues.map[json["author"]]!,
    sc: json["sc"],
    et: json["et"],
    ht: json["ht"],
  );

  Map<String, dynamic> toJson() => {
    "author": abhinavAuthorValues.reverse[author],
    "sc": sc,
    "et": et,
    "ht": ht,
  };
}

enum AbhinavAuthor {
  SRI_ABHINAV_GUPTA,
  SRI_RAMANUJA,
  SRI_SHANKARACHARYA
}

final abhinavAuthorValues = EnumValues({
  "Sri Abhinav Gupta": AbhinavAuthor.SRI_ABHINAV_GUPTA,
  "Sri Ramanuja": AbhinavAuthor.SRI_RAMANUJA,
  "Sri Shankaracharya": AbhinavAuthor.SRI_SHANKARACHARYA
});

class Adi {
  AdiAuthor? author;
  String? et;

  Adi({
    this.author,
    this.et,
  });

  factory Adi.fromJson(Map<String, dynamic> json) => Adi(
    author: adiAuthorValues.map[json["author"]]!,
    et: json["et"],
  );

  Map<String, dynamic> toJson() => {
    "author": adiAuthorValues.reverse[author],
    "et": et,
  };
}

enum AdiAuthor {
  DR_S_SANKARANARAYAN,
  SHRI_PUROHIT_SWAMI,
  SWAMI_ADIDEVANANDA,
  SWAMI_GAMBIRANANDA
}

final adiAuthorValues = EnumValues({
  "Dr.S.Sankaranarayan": AdiAuthor.DR_S_SANKARANARAYAN,
  "Shri Purohit Swami": AdiAuthor.SHRI_PUROHIT_SWAMI,
  "Swami Adidevananda": AdiAuthor.SWAMI_ADIDEVANANDA,
  "Swami Gambirananda": AdiAuthor.SWAMI_GAMBIRANANDA
});

class Anand {
  AnandAuthor? author;
  String? sc;

  Anand({
    this.author,
    this.sc,
  });

  factory Anand.fromJson(Map<String, dynamic> json) => Anand(
    author: anandAuthorValues.map[json["author"]]!,
    sc: json["sc"],
  );

  Map<String, dynamic> toJson() => {
    "author": anandAuthorValues.reverse[author],
    "sc": sc,
  };
}

enum AnandAuthor {
  SRI_ANANDGIRI,
  SRI_DHANPATI,
  SRI_JAYATRITHA,
  SRI_MADHAVACHARYA,
  SRI_MADHUSUDAN_SARASWATI,
  SRI_NEELKANTH,
  SRI_PURUSHOTTAMJI,
  SRI_SRIDHARA_SWAMI,
  SRI_VALLABHACHARYA,
  VEDANTADESHIKACHARYA_VENKATANATHA
}

final anandAuthorValues = EnumValues({
  "Sri Anandgiri": AnandAuthor.SRI_ANANDGIRI,
  "Sri Dhanpati": AnandAuthor.SRI_DHANPATI,
  "Sri Jayatritha": AnandAuthor.SRI_JAYATRITHA,
  "Sri Madhavacharya": AnandAuthor.SRI_MADHAVACHARYA,
  "Sri Madhusudan Saraswati": AnandAuthor.SRI_MADHUSUDAN_SARASWATI,
  "Sri Neelkanth": AnandAuthor.SRI_NEELKANTH,
  "Sri Purushottamji": AnandAuthor.SRI_PURUSHOTTAMJI,
  "Sri Sridhara Swami": AnandAuthor.SRI_SRIDHARA_SWAMI,
  "Sri Vallabhacharya": AnandAuthor.SRI_VALLABHACHARYA,
  "Vedantadeshikacharya Venkatanatha": AnandAuthor.VEDANTADESHIKACHARYA_VENKATANATHA
});

class Chinmay {
  ChinmayAuthor? author;
  String? hc;

  Chinmay({
    this.author,
    this.hc,
  });

  factory Chinmay.fromJson(Map<String, dynamic> json) => Chinmay(
    author: chinmayAuthorValues.map[json["author"]]!,
    hc: json["hc"],
  );

  Map<String, dynamic> toJson() => {
    "author": chinmayAuthorValues.reverse[author],
    "hc": hc,
  };
}

enum ChinmayAuthor {
  SWAMI_CHINMAYANANDA
}

final chinmayAuthorValues = EnumValues({
  "Swami Chinmayananda": ChinmayAuthor.SWAMI_CHINMAYANANDA
});

class Rams {
  RamsAuthor? author;
  String? ht;
  String? hc;

  Rams({
    this.author,
    this.ht,
    this.hc,
  });

  factory Rams.fromJson(Map<String, dynamic> json) => Rams(
    author: ramsAuthorValues.map[json["author"]]!,
    ht: json["ht"],
    hc: json["hc"],
  );

  Map<String, dynamic> toJson() => {
    "author": ramsAuthorValues.reverse[author],
    "ht": ht,
    "hc": hc,
  };
}

enum RamsAuthor {
  SWAMI_RAMSUKHDAS
}

final ramsAuthorValues = EnumValues({
  "Swami Ramsukhdas": RamsAuthor.SWAMI_RAMSUKHDAS
});

class Siva {
  SivaAuthor? author;
  String? et;
  String? ec;

  Siva({
    this.author,
    this.et,
    this.ec,
  });

  factory Siva.fromJson(Map<String, dynamic> json) => Siva(
    author: sivaAuthorValues.map[json["author"]]!,
    et: json["et"],
    ec: json["ec"],
  );

  Map<String, dynamic> toJson() => {
    "author": sivaAuthorValues.reverse[author],
    "et": et,
    "ec": ec,
  };
}

enum SivaAuthor {
  SWAMI_SIVANANDA
}

final sivaAuthorValues = EnumValues({
  "Swami Sivananda": SivaAuthor.SWAMI_SIVANANDA
});

class Tej {
  TejAuthor? author;
  String? ht;

  Tej({
    this.author,
    this.ht,
  });

  factory Tej.fromJson(Map<String, dynamic> json) => Tej(
    author: tejAuthorValues.map[json["author"]]!,
    ht: json["ht"],
  );

  Map<String, dynamic> toJson() => {
    "author": tejAuthorValues.reverse[author],
    "ht": ht,
  };
}

enum TejAuthor {
  SWAMI_TEJOMAYANANDA
}

final tejAuthorValues = EnumValues({
  "Swami Tejomayananda": TejAuthor.SWAMI_TEJOMAYANANDA
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
