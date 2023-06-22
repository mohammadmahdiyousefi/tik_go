import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tik_go/providers/change_founder_report_trafic_page.dart';
import 'package:tik_go/providers/choischep_provider.dart';
import 'package:tik_go/theme/theme.dart';

import '../view/reporttraficforfounderscreen/Present_page.dart';
import '../view/reporttraficforfounderscreen/all_property.dart';
import '../view/reporttraficforfounderscreen/missing_page.dart';
import '../view/reporttraficforfounderscreen/vacation_page.dart';

class HorizontalChoischip extends StatefulWidget {
  HorizontalChoischip({super.key, this.filds = const [], this.width = 82});
  List<String> filds;
  double width;
  @override
  State<HorizontalChoischip> createState() => _HorizontalChoischipState();
}

class _HorizontalChoischipState extends State<HorizontalChoischip> {
  @override
  Widget build(BuildContext context) {
    return Consumer2<ChoischepProvider, ChangeFounderReporttraficPage>(
      builder:
          (context, ChoischepProvider, ChangeFounderReporttraficPage, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            width: double.infinity,
            height: 58,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                reverse: true,
                itemCount: widget.filds.length,
                itemBuilder: ((context, index) {
                  return Card(
                    elevation: 5,
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: (() {
                        ChoischepProvider.setindex = index;
                        if (widget.filds[index] == 'حاضرین') {
                          ChangeFounderReporttraficPage.setscreen =
                              PresentPage();
                        }
                        if (widget.filds[index] == 'غائبین') {
                          ChangeFounderReporttraficPage.setscreen =
                              MissingPage();
                        }
                        if (widget.filds[index] == 'مرخصی') {
                          ChangeFounderReporttraficPage.setscreen =
                              VacationPage();
                        }
                        if (widget.filds[index] == 'همه') {
                          ChangeFounderReporttraficPage.setscreen =
                              AllProperty();
                        }
                      }),
                      child: Container(
                        height: 40,
                        width: widget.width,
                        decoration: BoxDecoration(
                            color: ChoischepProvider.curentchoise == index
                                ? Color(0xff332FD0)
                                : Color(0xffF4F4F4),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(widget.filds[index],
                              style: ChoischepProvider.curentchoise == index
                                  ? ThemeApp().white.textTheme.headline1
                                  : ThemeApp().black.textTheme.headline1),
                        ),
                      ),
                    ),
                  );
                })),
          ),
        );
      },
    );
  }
}
