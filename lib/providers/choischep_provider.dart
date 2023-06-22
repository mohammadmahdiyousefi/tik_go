import 'package:flutter/cupertino.dart';

class ChoischepProvider extends ChangeNotifier {
  int curentindex = 0;
  int get curentchoise => curentindex;
  set setindex(int index) {
    curentindex = index;
    notifyListeners();
  }
}
