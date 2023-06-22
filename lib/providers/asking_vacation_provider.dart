import 'package:flutter/cupertino.dart';
import 'package:tik_go/models/ascing_vacation_status.dart';

class AskingVacationProvider extends ChangeNotifier {
  String fromtime = ':ازساعت';
  String totime = ':تاساعت';
  vacationstatus status = vacationstatus.hour;

  get gettotime => totime;
  get getfromtime => fromtime;
  get isclikget => status;
  void set fromtimeseter(String time) {
    fromtime = time;
    notifyListeners();
  }

  void set totimeseter(String time) {
    totime = time;
    notifyListeners();
  }

  void set froiscliksetermtimeseter(vacationstatus iscliked) {
    status = iscliked;
    notifyListeners();
  }
}
