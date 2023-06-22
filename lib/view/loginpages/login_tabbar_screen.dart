import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'package:tik_go/providers/change_screen_provider.dart';
import 'package:tik_go/theme/theme.dart';
import 'package:tik_go/view/home_page/home_screen.dart';

import 'login_3_screen.dart';
import 'login_4_screen.dart';
import 'login_5_screen.dart';

class Logintabbar extends StatefulWidget {
  Logintabbar({
    super.key,
  });

  @override
  State<Logintabbar> createState() => _LogintabbarState();
}

class _LogintabbarState extends State<Logintabbar>
    with SingleTickerProviderStateMixin {
  TabController? tabcontrol;
  bool onPagelogin = false;
  var screen;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabcontrol = TabController(length: 2, vsync: this);
    screen = Login3Screen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        SafeArea(
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: tabcontrol,
            children: [
              screen,
              Login5Screen(),
            ],
          ),
        ),
        tabbar(),
        Positioned(
            left: 92,
            right: 92,
            bottom: 35,
            child: onPagelogin == true ? loginbuttom() : nextbuttom()),
      ]),
    );
  }

  Widget tabbar() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 85, right: 85),
        child: Card(
          shadowColor: Color(0xff000000),
          elevation: 7,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                color: Color(0xffF4F4F4),
                borderRadius: BorderRadius.circular(50)),
            child: TabBar(
              onTap: (value) {
                setState(() {
                  onPagelogin = (value == 1);
                });
              },
              controller: tabcontrol,
              labelStyle: TextStyle(
                fontSize: 14,
                fontFamily: 'ISW',
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 14,
                fontFamily: 'ISW',
              ),
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              splashBorderRadius: BorderRadius.circular(50),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  color: Color(0xff332FD0)),
              tabs: [
                Tab(
                  text: 'ثبت نام',
                ),
                Tab(
                  text: 'ورود',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget nextbuttom() {
    return ElevatedButton(
      onPressed: (() {
        setState(() {
          screen = Login4Screen();
        });
      }),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(191, 48),
          backgroundColor: Color(0xff332FD0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      child: Text('تاید', style: ThemeApp().white.textTheme.headline2),
    );
  }

  Widget loginbuttom() {
    return ElevatedButton(
      onPressed: (() {
        final screen =
            Provider.of<ChangeScreenProvider>(context, listen: false);
        screen.setscreen = HomeScreen();
      }),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(191, 48),
          backgroundColor: Color(0xff332FD0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      child: Text('ورود', style: ThemeApp().white.textTheme.headline2),
    );
  }
}
