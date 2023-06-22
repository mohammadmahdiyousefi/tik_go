import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:tik_go/theme/theme.dart';

class Login5Screen extends StatefulWidget {
  Login5Screen({
    super.key,
  });

  @override
  State<Login5Screen> createState() => _Login5ScreenState();
}

class _Login5ScreenState extends State<Login5Screen> {
  // TextEditingController? loginpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 90,
            ),
            circleavatar(),
            SizedBox(
              height: 32,
            ),
            brandtext(),
            SizedBox(
              height: 15,
            ),
            personalcod(),
            SizedBox(
              height: 24,
            ),
            password(),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('فراموشی', style: ThemeApp().blu.textTheme.headline1),
                  Text('رمز عبور خود را فراموش کرده اید؟ ',
                      style: ThemeApp().grey.textTheme.headline1),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget circleavatar() {
    return Center(
      child: CircleAvatar(
        radius: 55,
        backgroundColor: Color(0xff7E7E7E),
        child: Text(
          'لوگو',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'ISW',
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
    );
  }

  Widget brandtext() {
    return Center(
      child: Text('تیک,گو', style: ThemeApp().blu.textTheme.headline2),
    );
  }

  Widget personalcod() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(':کد ملی یا کد پرسنلی',
                  style: ThemeApp().grey.textTheme.headline1),
              SizedBox(
                width: 16,
              ),
              Image(image: AssetImage('images/Card Icon.png'))
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffF4F4F4), width: 1),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff332FD0), width: 2),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget password() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(':رمز عبور', style: ThemeApp().grey.textTheme.headline1),
              SizedBox(
                width: 16,
              ),
              Image(image: AssetImage('images/Lock Icon.png'))
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffF4F4F4), width: 1),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff332FD0), width: 2),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /* Widget loginbuttom() {
    return ElevatedButton(
      onPressed: (() {}),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(191, 48),
          backgroundColor: Color(0xff332FD0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      child: Text(
        'ورود',
        style: TextStyle(
            fontSize: 14,
            fontFamily: 'ISW',
            color: Color(0xffF4F4F4),
            fontWeight: FontWeight.w400),
      ),
    );
  }*/
}
