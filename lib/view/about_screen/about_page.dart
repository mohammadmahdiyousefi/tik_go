import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tik_go/theme/theme.dart';
import 'package:tik_go/widget/circle_logo.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 66,
        ),
        CircleLogo(),
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            """ برنامه تیک, گو برنامه ای است برای ثبت حضور غیاب کارمندان که به واسطه ی این برنامه شما میتوانید آمار حضور, غیاب, مرخصی و اضافه کاری کارمندان رو ارزیابی کنید.  """,
            style: ThemeApp().black.textTheme.headline1,
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}
