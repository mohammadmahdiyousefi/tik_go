import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:tik_go/theme/theme.dart';

PreferredSizeWidget AppBarWidget({var titel}) {
  return AppBar(
    backgroundColor: Color(0xffF4F4F4),
    elevation: 5,
    title: titel,
    centerTitle: true,
    actionsIconTheme: IconThemeData(color: Color(0xff202020)),
    leading: Image(image: AssetImage('images/Search Icon.png')),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
  );
}
