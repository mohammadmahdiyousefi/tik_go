import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerProvider extends ChangeNotifier {
  DateTime timenow = DateTime.now();

  String newhour = DateTime.now().hour == 0
      ? '0' + DateTime.now().hour.toString()
      : DateTime.now().hour.toString();
  String newmin = DateTime.now().minute < 10
      ? '0' + DateTime.now().minute.toString()
      : DateTime.now().minute.toString();
  get gethour => newhour;
  get getmin => newmin;
  set timerset(DateTime newtime) {
    timenow = newtime;
    newhour = newtime.hour == 0
        ? '0' + newtime.hour.toString()
        : newtime.hour.toString();
    newmin = newtime.minute <= 10
        ? '0' + newtime.minute.toString()
        : newtime.minute.toString();
    notifyListeners();
  }
}
