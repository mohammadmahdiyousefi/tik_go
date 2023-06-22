import 'package:accordion/accordion.dart';
import 'package:tik_go/models/accordion_model.dart';
import 'package:tik_go/widget/accordion_panel.dart';
import 'package:tik_go/widget/accordion_section.dart';
import 'package:tik_go/widget/circle_progres_widget.dart';
import 'package:tik_go/widget/divider.dart';
import 'package:flutter/material.dart';
import 'package:tik_go/widget/horizontalchoiscep.dart';

class ReportvacationScreen extends StatefulWidget {
  const ReportvacationScreen({super.key});

  @override
  State<ReportvacationScreen> createState() => _ReportvacationScreenState();
}

class _ReportvacationScreenState extends State<ReportvacationScreen> {
  /*List<Accordionmodels> vacationmodels = [
    Accordionmodels(
      'akhhg',
      'ghfg',
      Color(0xffFFBF00),
    ),
    Accordionmodels(
      'akhhg',
      'ghfg',
      Color(0xffFFBF00),
    ),
  ];*/
  List<AccordionSection> accordionitems = [
    accordionSection(headertitel: 'جزیات', height: 283, items: [
      Accordionmodels(
        titel: 'در ساعت ۱۶ و ۱۰ دقیقه',
        subtitel: 'در تاریخ ۱۴۰۱/۱۰/۱۷',
        color: Color(0xffFFBF00),
      ),
      Accordionmodels(
        titel: 'در ساعت ۱۶ و ۱۰ دقیقه',
        subtitel: 'در تاریخ ۱۴۰۱/۱۰/۱۷',
        color: Color(0xffFFBF00),
      ),
    ])
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
        ),
      )
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
              centernumber: '2',
              colorprgres: Color(0xffFFBF00),
              headertitel: 'مرخصی',
              percent: 0.1,
            ),
          ),
        ),
      ),
    );
  }
}
