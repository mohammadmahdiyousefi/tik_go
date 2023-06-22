import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:tik_go/models/accordion_model.dart';
import 'package:tik_go/widget/accordion_section.dart';
import 'package:tik_go/widget/circle_progres_widget.dart';
import 'package:tik_go/widget/divider.dart';
import 'package:tik_go/widget/horizontalchoiscep.dart';

import '../../widget/accordion_panel.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  List<AccordionSection> accordionitems = [
    accordionSection(headertitel: 'ورود', height: 233, items: [
      Accordionmodels(
        titel: 'در ساعت ۱۶ و ۱۰ دقیقه',
        subtitel: 'در تاریخ ۱۴۰۱/۱۰/۱۷',
        color: Color(0xff3EC70B),
      ),
      Accordionmodels(
        titel: 'در ساعت ۱۶ و ۱۰ دقیقه',
        subtitel: 'در تاریخ ۱۴۰۱/۱۰/۱۷',
        color: Color(0xff3EC70B),
      ),
    ]),
    accordionSection(headertitel: 'خروج', height: 233, items: [
      Accordionmodels(
        titel: 'در ساعت ۱۶ و ۱۰ دقیقه',
        subtitel: 'در تاریخ ۱۴۰۱/۱۰/۱۷',
        color: Color(0xffFF1E00),
      ),
      Accordionmodels(
        titel: 'در ساعت ۱۶ و ۱۰ دقیقه',
        subtitel: 'در تاریخ ۱۴۰۱/۱۰/۱۷',
        color: Color(0xffFF1E00),
      ),
    ]),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      HorizontalChoischip(
        filds: ['روزانه', 'هفتگی', 'ماهانه', 'همه'],
      ),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleProgres(
                centernumber: '36',
                colorprgres: Color(0xffFF1E00),
                headertitel: 'خروج',
                percent: 0.8,
              ),
              CircleProgres(
                centernumber: '20',
                colorprgres: Color(0xff3EC70B),
                headertitel: 'ورود',
                percent: 0.4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
