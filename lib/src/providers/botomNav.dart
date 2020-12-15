import 'package:flutter/cupertino.dart';

class BottomNavProvider extends ChangeNotifier {
  int defaut = 0;
  void setBotoNav(int a) {
    defaut = a;
    notifyListeners();
  }

  int getDefaut() {
    return defaut;
  }
}
