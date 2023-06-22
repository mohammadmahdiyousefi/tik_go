import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tik_go/theme/theme.dart';
import 'package:tik_go/widget/circle_logo.dart';

class Login3Screen extends StatefulWidget {
  const Login3Screen({super.key});

  @override
  State<Login3Screen> createState() => _Login3ScreenState();
}

class _Login3ScreenState extends State<Login3Screen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 90),
          CircleLogo(),
          SizedBox(height: 32),
          brandtext(),
          SizedBox(height: 30),
          positionedbox(height: height, width: widget),
          SizedBox(height: 24),
          verifybox(height: height, width: widget),
          SizedBox(height: 16),
          infotext(height: height, width: widget),
        ]),
      ),
    );
  }

  Widget brandtext({var height, var width}) {
    return Center(
      child: Text('تیک,گو', style: ThemeApp().blu.textTheme.headline2),
    );
  }

  Widget positionedbox({var height, var width}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(':سمت', style: ThemeApp().grey.textTheme.headline1),
              SizedBox(
                width: 16,
              ),
              Image(image: AssetImage('images/Bag Icon.png')),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 20),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            height: height / 17,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff332FD0), width: 2),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ],
    );
  }

  Widget verifybox({var height, var width}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(':کد تاید شرکت', style: ThemeApp().grey.textTheme.headline1),
              SizedBox(
                width: 16,
              ),
              Image(image: AssetImage('images/Number Icon.png')),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
              height: height / 17,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF4F4F4), width: 1),
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
        ),
      ],
    );
  }

  Widget infotext({var height, var width}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Text(
        """کد تایید شرکت چیه؟
کد تایید شرکت یک کد برای احراز هویت کارمندان, کارکنان و مدیران میباشد. این کد امنیت برنامه را جهت دسترسی افراد تامین میکند""",
        textAlign: TextAlign.end,
        style: TextStyle(
            color: Color(0xff7E7E7E),
            fontFamily: 'ISW',
            fontSize: 16,
            fontWeight: FontWeight.w400),
      ),
    );
  }

  /*Widget nextbuttom() {
    return ElevatedButton(
      onPressed: (() {}),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(191, 48),
          backgroundColor: Color(0xff332FD0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      child: Text(
        'تاید',
        style: TextStyle(
            fontSize: 20,
            fontFamily: 'ISW',
            color: Color(0xffF4F4F4),
            fontWeight: FontWeight.w400),
      ),
    );
  }*/
}
