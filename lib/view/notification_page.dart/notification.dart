import 'package:flutter/material.dart';
import 'package:tik_go/models/accordion_model.dart';
import 'package:tik_go/widget/accordion_panel.dart';
import 'package:tik_go/widget/accordion_section.dart';
import 'package:tik_go/widget/horizontalchoiscep.dart';
import 'package:accordion/accordion.dart';

class NotificationFounder extends StatefulWidget {
  const NotificationFounder({super.key});

  @override
  State<NotificationFounder> createState() => _NotificationFounderState();
}

class _NotificationFounderState extends State<NotificationFounder> {
  List<AccordionSection> accordionitems = [
    accordionSection(headertitel: '1400/01/23', items: [
      Accordionmodels(
        titel: 'akhhg',
        subtitel: 'ghfg',
        color: Color(0xff3EC70B),
      ),
      Accordionmodels(
        titel: 'akhhg',
        subtitel: 'ghfg',
        color: Color(0xff3EC70B),
      ),
      Accordionmodels(
        titel: 'akhhg',
        subtitel: 'ghfg',
        color: Color(0xffFF1E00),
      ),
      Accordionmodels(
        titel: 'akhhg',
        subtitel: 'ghfg',
        color: Color(0xffFF1E00),
      ),
    ]),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HorizontalChoischip(
          filds: ['تردد', 'رد و درخواست', 'همه'],
          width: 115,
        ),
        Expanded(
          child: Directionality(
              textDirection: TextDirection.rtl,
              child: accordionpanel(accordionitems)),
        ),
      ],
    );
  }
}
