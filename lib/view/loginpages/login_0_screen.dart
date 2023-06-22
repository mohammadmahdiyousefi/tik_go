import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:tik_go/theme/theme.dart';

import 'login_1_screen.dart';
import 'login_2_screen.dart';
import 'login_tabbar_screen.dart';

class Login0Screen extends StatefulWidget {
  const Login0Screen({super.key});

  @override
  State<Login0Screen> createState() => _Login0ScreenState();
}

class _Login0ScreenState extends State<Login0Screen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    print(_controller.initialPage);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _controller,
            children: [
              Login1Screen(),
              Login2Screen(),
              Logintabbar(),
            ],
            onPageChanged: (value) {
              setState(() {
                onLastPage = (value == 2);
              });
            },
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: WormEffect(
                          dotHeight: 8,
                          dotWidth: 8,
                          activeDotColor: Color(0xff332FD0))),
                ],
              )),
          Positioned(
              left: 92,
              right: 92,
              bottom: 35,
              child: onLastPage == false ? nextbuttom() : Container()),
        ],
      ),
    );
  }

  Widget nextbuttom({BuildContext? context}) {
    return ElevatedButton(
      onPressed: (() {
        _controller.nextPage(
            duration: Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
      }),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(191, 48),
          backgroundColor: Color(0xff332FD0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      child: Text('بعدی', style: ThemeApp().white.textTheme.headline2),
    );
  }
}
