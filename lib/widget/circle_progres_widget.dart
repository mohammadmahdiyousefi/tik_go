import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tik_go/theme/theme.dart';

class CircleProgres extends StatefulWidget {
  CircleProgres(
      {super.key,
      this.centernumber = '1',
      this.centertitel = 'بار',
      this.colorprgres = Colors.red,
      this.headertitel = 'titel',
      this.percent = 0.5});
  String headertitel;
  String centertitel;
  String centernumber;
  Color colorprgres;
  double percent;

  @override
  State<CircleProgres> createState() => _CircleProgresState();
}

class _CircleProgresState extends State<CircleProgres> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 65,
      lineWidth: 10,
      progressColor: widget.colorprgres,
      backgroundColor: Color(0xffECEDEE),
      percent: widget.percent,
      circularStrokeCap: CircularStrokeCap.round,
      header: Column(
        children: [
          Text(widget.headertitel, style: ThemeApp().black.textTheme.headline3),
          SizedBox(
            height: 20,
          )
        ],
      ),
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.centernumber,
              style: ThemeApp().black.textTheme.headline4),
          Text(widget.centertitel, style: ThemeApp().grey.textTheme.headline1),
        ],
      ),
    );
  }
}
