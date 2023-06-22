import 'package:accordion/accordion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tik_go/widget/accordion_section.dart';

Widget accordionpanel(List<AccordionSection> section) {
  return Directionality(
      textDirection: TextDirection.rtl,
      child: Accordion(
          maxOpenSections: 1,
          paddingListBottom: 0,
          paddingListTop: 0,
          paddingListHorizontal: 5,
          contentBackgroundColor: Colors.transparent,
          contentBorderColor: Colors.transparent,
          headerBackgroundColor: Colors.transparent,
          headerBackgroundColorOpened: Colors.transparent,
          rightIcon: Icon(
            Icons.keyboard_arrow_up,
            size: 20,
            color: Color(0xff7E7E7E),
          ),
          children: section));
}
