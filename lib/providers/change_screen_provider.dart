import 'package:flutter/foundation.dart';

import '../models/drawer_option.dart';

class ChangeScreenProvider extends ChangeNotifier {
  var curentscreen;
  var appbartitel;
  int curentindex = 0;
  DrawerOption? curentststus;
  DrawerOption? curentitemsststus;
  get getcurentindex => curentindex;
  set setindex(int index) {
    curentindex = index;
    notifyListeners();
  }

  get getscreen => curentscreen;
  set setscreen(var screen) {
    curentscreen = screen;
    notifyListeners();
  }

  get getappbartitel => appbartitel;
  set setappbartitel(var titel) {
    appbartitel = titel;
    notifyListeners();
  }

  get getstatus => curentststus;
  set setstatus(var status) {
    curentststus = status;
    notifyListeners();
  }

  get getitemstatus => curentitemsststus;
  set setitemstatus(var status) {
    curentitemsststus = status;

    notifyListeners();
  }
}
