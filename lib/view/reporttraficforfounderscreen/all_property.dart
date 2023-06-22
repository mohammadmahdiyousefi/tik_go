import 'package:accordion/accordion.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:tik_go/models/accordion_model.dart';
import 'package:tik_go/widget/accordion_panel.dart';
import 'package:tik_go/widget/accordion_section.dart';
import 'package:tik_go/widget/circle_progres_widget.dart';
import 'package:tik_go/widget/divider.dart';

class AllProperty extends StatefulWidget {
  const AllProperty({super.key});

  @override
  State<AllProperty> createState() => _AllPropertyState();
}

class _AllPropertyState extends State<AllProperty> {
  List<AccordionSection> accordionitems = [
    accordionSection(headertitel: 'حاضرین', height: 233, items: [
      Accordionmodels(
        titel: 'akhhg',
      ),
      Accordionmodels(
        titel: 'akhhg',
      ),
    ]),
    accordionSection(headertitel: 'غائبین', height: 233, items: [
      Accordionmodels(
        titel: 'akhhg',
      ),
      Accordionmodels(
        titel: 'akhhg',
      ),
    ]),
    accordionSection(headertitel: 'مرخصی', height: 233, items: [
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
          height: 390,
          width: 350,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleProgres(
                      centernumber: '36',
                      colorprgres: Color(0xffFF1E00),
                      headertitel: 'غائبین',
                      centertitel: 'نفر',
                      percent: 0.8,
                    ),
                    CircleProgres(
                      centernumber: '36',
                      colorprgres: Color(0xff3EC70B),
                      headertitel: 'حاضرین',
                      centertitel: 'نفر',
                      percent: 0.8,
                    ),
                  ],
                ),
                CircleProgres(
                  centernumber: '36',
                  colorprgres: Color(0xffFFBF00),
                  headertitel: 'مرخصی',
                  centertitel: 'نفر',
                  percent: 0.8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
