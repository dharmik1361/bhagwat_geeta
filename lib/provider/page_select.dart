import 'package:flutter/cupertino.dart';

class ChapterProvide extends ChangeNotifier{
  int _selectedPage = 0;

  int get selectedChapter => _selectedPage;

  void setSelectedChapter(int chapterNumber){
    _selectedPage = chapterNumber;
    notifyListeners();
  }
}