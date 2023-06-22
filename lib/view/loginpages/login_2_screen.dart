import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tik_go/theme/theme.dart';

class Login2Screen extends StatelessWidget {
  const Login2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        imagegradient(height: height, width: width),
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(':ویژگی ها',
                  textAlign: TextAlign.end,
                  style: ThemeApp().grey.textTheme.headline2),
            ],
          ),
        ),
        SizedBox(height: 8),
        Expanded(
          child: listoftextability(height: height, width: width),
        ),
      ]),
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
          image: AssetImage('images/unsplash_-837JygbCJo.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget listoftextability({var height, var width}) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'امکان حضور غیاب برای همه',
                textAlign: TextAlign.end,
                style: ThemeApp().black.textTheme.headline1,
              ),
              SizedBox(width: 17),
              Image(
                image: AssetImage('images/Mark.png'),
              )
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'امکان واگزاری تسک ها به کارمندها',
                textAlign: TextAlign.end,
                style: ThemeApp().black.textTheme.headline1,
              ),
              SizedBox(width: 17),
              Image(
                image: AssetImage('images/Mark.png'),
              )
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'امکان ثبت حضور و غیاب به صورت آنلاین و آفلاین',
                textAlign: TextAlign.end,
                style: ThemeApp().black.textTheme.headline1,
              ),
              SizedBox(width: 17),
              Image(
                image: AssetImage('images/Mark.png'),
              )
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'امکان ثبت درخواست مرخصی و اضافه کاری',
                textAlign: TextAlign.end,
                style: ThemeApp().black.textTheme.headline1,
              ),
              SizedBox(width: 17),
              Image(
                image: AssetImage('images/Mark.png'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
