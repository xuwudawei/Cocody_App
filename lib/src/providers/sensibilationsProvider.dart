import 'package:cocody/src/models/sensibilationsCardModel.dart';
import 'package:flutter/foundation.dart';

class SensibilationsProvider extends ChangeNotifier {
  List<SensibilationsCardModel> s = [];

  List<SensibilationsCardModel> get getAllSensibilations => s;
  void setSensibilations(List a) {
    s = a;
    notifyListeners();
  }
}
