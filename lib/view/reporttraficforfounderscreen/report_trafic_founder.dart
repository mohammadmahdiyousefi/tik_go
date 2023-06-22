import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tik_go/providers/change_founder_report_trafic_page.dart';
import 'package:tik_go/widget/horizontalchoiscep.dart';

class ReportTraficFounder extends StatefulWidget {
  const ReportTraficFounder({super.key});

  @override
  State<ReportTraficFounder> createState() => _ReportTraficFounderState();
}

class _ReportTraficFounderState extends State<ReportTraficFounder> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      HorizontalChoischip(
        filds: ['حاضرین', 'غائبین', 'مرخصی', 'همه'],
      ),
      Expanded(child: Consumer<ChangeFounderReporttraficPage>(
          builder: (context, ChangeFounderReporttraficPage, childe) {
        return SingleChildScrollView(
            child: ChangeFounderReporttraficPage.getscreen);
      })),
    ]);
  }
}
