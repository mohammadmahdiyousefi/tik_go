import 'package:accordion/accordion.dart';
import 'package:tik_go/models/accordion_model.dart';
import 'package:tik_go/widget/accordion_section.dart';
import 'package:tik_go/widget/circle_progres_widget.dart';
import 'package:flutter/material.dart';
import 'package:tik_go/widget/horizontalchoiscep.dart';

import '../../widget/accordion_panel.dart';
import '../../widget/divider.dart';

class ReportOperationScreen extends StatefulWidget {
  const ReportOperationScreen({super.key});

  @override
  State<ReportOperationScreen> createState() => _ReportOperationScreenState();
}

class _ReportOperationScreenState extends State<ReportOperationScreen> {
  List<AccordionSection> accordionitems = [
    accordionSection(headertitel: 'کارمندان برتر', height: 100, items: [
      Accordionmodels(titel: 'محمد مهدی یوسفی', image: '20220402_155626_500'),
      Accordionmodels(titel: 'محمد مهدی یوسفی', image: '20220402_155626_500'),
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
      ))
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
          height: 390,
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleProgres(
                    centernumber: '2',
                    colorprgres: Color(0xffFF1E00),
                    headertitel: ' خروج',
                    percent: 0.1,
                  ),
                  CircleProgres(
                    centernumber: '2',
                    colorprgres: Color(0xff3EC70B),
                    headertitel: ' ورود',
                    percent: 0.1,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleProgres(
                    centernumber: '2',
                    colorprgres: Color(0xff332FD0),
                    headertitel: 'اضافه کاری',
                    percent: 0.1,
                  ),
                  CircleProgres(
                    centernumber: '2',
                    colorprgres: Color(0xffFFBF00),
                    headertitel: ' مرخصی',
                    percent: 0.1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
