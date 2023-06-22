import 'package:accordion/accordion.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:tik_go/models/accordion_model.dart';
import 'package:tik_go/widget/accordion_panel.dart';
import 'package:tik_go/widget/accordion_section.dart';
import 'package:tik_go/widget/circle_progres_widget.dart';
import 'package:tik_go/widget/divider.dart';

class PresentPage extends StatefulWidget {
  const PresentPage({super.key});

  @override
  State<PresentPage> createState() => _PresentPageState();
}

class _PresentPageState extends State<PresentPage> {
  List<AccordionSection> accordionitems = [
    accordionSection(headertitel: 'جزئیات', height: 233, items: [
      Accordionmodels(
        titel: 'akhhg',
      ),
      Accordionmodels(
        titel: 'akhhg',
      ),
    ]),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Dividerwidget(titel: "نمودار")),
        circleprogresconteiner(),
        accordionpanel(accordionitems),
      ],
    );
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
              centernumber: '36',
              colorprgres: Color(0xff3EC70B),
              headertitel: 'حاضرین',
              centertitel: 'نفر',
              percent: 0.8,
            ),
          ),
        ),
      ),
    );
  }
}
