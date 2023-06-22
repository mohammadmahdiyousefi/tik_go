import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:tik_go/theme/theme.dart';

class Login1Screen extends StatelessWidget {
  const Login1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          imagegradient(height: height, width: width),
          SizedBox(
            height: 32,
          ),
          wellcometext(context),
          SizedBox(
            height: 32,
          ),
          text(context),
        ],
      ),
    );
  }

  Widget imagegradient({var height, var width}) {
    return Container(
      height: height / 1.75,
      width: double.infinity,
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Color(0xff332FD0),
          ],
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        child: Image(
          image: AssetImage('images/Login-1 img.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget wellcometext(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('!خوش آمدید', style: ThemeApp().black.textTheme.headline2),
        Text(' گو', style: ThemeApp().blu.textTheme.headline2),
        Text(',تیک', style: ThemeApp().blu.textTheme.headline2),
        Text(' به', style: ThemeApp().black.textTheme.headline2)
      ],
    );
  }

  Widget text(BuildContext context) {
    return Column(
      children: [
        Text('!ابزاری برای همه', style: ThemeApp().black.textTheme.headline2),
        Text('آسان کاربردی و سریع',
            style: ThemeApp().black.textTheme.headline2),
      ],
    );
  }
}
