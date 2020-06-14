import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  int level = 0;

  void levelUp() {
    var condition = (level <= 9);
    condition ? level += 1 : level += 0;
    notifyListeners();
  }

  void levelDown() {
    var condition = (level >= 1);
    condition ? level -= 1 : level += 0;
    notifyListeners();
  }
}
