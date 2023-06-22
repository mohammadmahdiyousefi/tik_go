import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:tik_go/models/accordion_model.dart';
import 'package:tik_go/widget/divider.dart';
import 'package:tik_go/widget/accordion_contaner.dart';

AccordionSection accordionSection({
  String? headertitel,
  List<Accordionmodels>? items,
  double height = 173,
}) {
  return AccordionSection(
    isOpen: false,
    contentBackgroundColor: Colors.transparent,
    contentBorderColor: Colors.transparent,
    headerBackgroundColor: Colors.transparent,
    headerBackgroundColorOpened: Colors.transparent,
    header: Directionality(
        textDirection: TextDirection.ltr,
        child: Dividerwidget(
          titel: headertitel!,
        )),
    content: Container(
        height: height,
        width: 350,
        color: Colors.transparent,
        child: ListView.builder(
            itemCount: items!.length,
            itemBuilder: ((context, index) {
              return AccordionContaner(
                titel: items[index].titel,
                subtitel: items[index].subtitel,
                color: items[index].color,
                image: items[index].image,
              );
            }))),
    contentHorizontalPadding: 20,
  );
}
