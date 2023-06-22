import 'package:flutter/foundation.dart';

class ChangeFounderReporttraficPage extends ChangeNotifier {
  var curentscreen;
  get getscreen => curentscreen;
  set setscreen(var screen) {
    curentscreen = screen;
    notifyListeners();
  }
}
