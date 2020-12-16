import 'package:cocody/src/models/newsCardModel.dart';
import 'package:flutter/foundation.dart';

class NewsProvider extends ChangeNotifier {
  List<NewsCardModel> s = [];

  List<NewsCardModel> get getAllNews => s;
  void setNews(List a) {
    s = a;
    notifyListeners();
  }
}
