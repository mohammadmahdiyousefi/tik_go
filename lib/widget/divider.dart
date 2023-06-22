import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:tik_go/theme/theme.dart';

class Dividerwidget extends StatelessWidget {
  Dividerwidget({super.key, this.titel = 'titel'});
  String titel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: Color(0xff7E7E7E),
          ),
        ),
        SizedBox(
          width: 7,
        ),
        Text(
          titel,
          style: ThemeApp().grey.textTheme.headline2,
        ),
      ],
    );
  }
}
