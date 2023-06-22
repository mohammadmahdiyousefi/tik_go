import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tik_go/theme/theme.dart';

class Login4Screen extends StatefulWidget {
  const Login4Screen({super.key});

  @override
  State<Login4Screen> createState() => _Login4ScreenState();
}

class _Login4ScreenState extends State<Login4Screen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 90),
            circleavatar(),
            SizedBox(height: 21),
            namefilde(),
            SizedBox(
              height: 20,
            ),
            lastnamefilde(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                phonenumber(),
                personelcod(),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                veryfipassword(),
                password(),
              ],
            ),
          ],
        ),
      ),

      /*singtupbuttom(),
          SizedBox(
            height: height * 0.02,
          ),*/
    );
  }

  Widget circleavatar() {
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
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
          Positioned(
            right: 0,
            bottom: 0,
            child: Icon(
              Icons.add_circle,
              color: Color(0xff332FD0),
              size: 40,
            ),
          )
        ],
      ),
    );
  }

  Widget namefilde({var height, var width}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(':نام', style: ThemeApp().grey.textTheme.headline1),
              SizedBox(
                width: 16,
              ),
              Image(image: AssetImage('images/Man Icon.png'))
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 11, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffF1F1F1), width: 1),
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

  Widget lastnamefilde({var height, var width}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(':نام خانوادگی', style: ThemeApp().grey.textTheme.headline1),
              SizedBox(
                width: 16,
              ),
              Image(image: AssetImage('images/Man Icon.png'))
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 11, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffF1F1F1), width: 1),
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

  Widget personelcod({var height, var width}) {
    return Container(
      height: 90,
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(':کد پرسنلی', style: ThemeApp().grey.textTheme.headline1),
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
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 11, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF1F1F1), width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff332FD0), width: 2),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget phonenumber({var height, var width}) {
    return Container(
      height: 90,
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(':شماره همراه',
                    style: ThemeApp().grey.textTheme.headline1),
                SizedBox(
                  width: 16,
                ),
                Image(image: AssetImage('images/Phone Icon.png'))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 11, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF1F1F1), width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff332FD0), width: 2),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget password({var height, var width}) {
    return Container(
      height: 90,
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
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
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 11, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF1F1F1), width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff332FD0), width: 2),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget veryfipassword({var height, var width}) {
    return Container(
      height: 90,
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(':تاید رمز عبور',
                    style: ThemeApp().grey.textTheme.headline1),
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
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 11, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF1F1F1), width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff332FD0), width: 2),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /* Widget singtupbuttom() {
    return ElevatedButton(
      onPressed: (() {}),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(191, 18),
          backgroundColor: Color(0xff332FD0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      child: Text(
        'ثبت نام',
        style: TextStyle(
            fontSize: 20,
            fontFamily: 'ISW',
            color: Color(0xffF1F1F1),
            fontWeight: FontWeight.w100),
      ),
    );
  }*/
}
