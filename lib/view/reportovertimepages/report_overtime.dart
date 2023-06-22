import 'package:accordion/accordion.dart';
import 'package:tik_go/models/accordion_model.dart';
import 'package:tik_go/widget/accordion_section.dart';
import 'package:tik_go/widget/circle_progres_widget.dart';
import 'package:flutter/material.dart';
import 'package:tik_go/widget/horizontalchoiscep.dart';

import '../../widget/accordion_panel.dart';
import '../../widget/divider.dart';

class ReportOvertimeScreen extends StatefulWidget {
  const ReportOvertimeScreen({super.key});

  @override
  State<ReportOvertimeScreen> createState() => _ReportOvertimeScreenState();
}

class _ReportOvertimeScreenState extends State<ReportOvertimeScreen> {
  List<AccordionSection> accordionitems = [
    accordionSection(headertitel: 'جزیات', height: 283, items: [
      Accordionmodels(
        titel: 'در ساعت ۱۶ و ۱۰ دقیقه',
        subtitel: 'در تاریخ ۱۴۰۱/۱۰/۱۷',
        color: Color(0xff332FD0),
      ),
      Accordionmodels(
        titel: 'در ساعت ۱۶ و ۱۰ دقیقه',
        subtitel: 'در تاریخ ۱۴۰۱/۱۰/۱۷',
        color: Color(0xff332FD0),
      ),
    ]),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      HorizontalChoischip(filds: ['روزانه', 'هفتگی', 'ماهانه', 'همه']),
      Expanded(
          child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Dividerwidget(titel: "نمودار")),
          circleprogresconteiner(),
          accordionpanel(accordionitems),
        ],
      )),
    ]);
  }

  Widget circleprogresconteiner() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Container(
          height: 220,
          width: 350,
          child: Center(
            child: CircleProgres(
              centernumber: '9',
              colorprgres: Color(0xff332FD0),
              headertitel: 'اضافه کاری',
              percent: 0.2,
            ),
          ),
        ),
      ),
    );
  }
}
