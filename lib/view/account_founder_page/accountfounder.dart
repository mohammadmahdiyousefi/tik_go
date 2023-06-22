import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:tik_go/theme/theme.dart';
import 'package:tik_go/widget/divider.dart';

class Account_founder extends StatefulWidget {
  const Account_founder({super.key});

  @override
  State<Account_founder> createState() => _Account_founderState();
}

class _Account_founderState extends State<Account_founder> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController personalcontroller = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController companycodecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController companycontroller = TextEditingController();
  TextEditingController verifypasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 44,
          ),
          circleavatar(),
          SizedBox(
            height: 27,
          ),
          Form(
              child: Column(
            children: [
              namefild(),
              SizedBox(
                height: 24,
              ),
              lastnamefild(),
              SizedBox(
                height: 24,
              ),
              personelcode(),
              SizedBox(
                height: 24,
              ),
              phonenumber(),
              SizedBox(
                height: 24,
              ),
              companyname(),
              SizedBox(
                height: 24,
              ),
              companycode(),
              SizedBox(
                height: 24,
              ),
              Divider(
                color: Color(0xff7E7E7E),
                thickness: 1,
                endIndent: 20,
                indent: 20,
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff332FD0)),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                        ),
                        SizedBox(
                          width: 190,
                        ),
                        Text(':محدوده شرکت',
                            style: ThemeApp().grey.textTheme.headline1),
                        SizedBox(
                          width: 22,
                        ),
                        Image(image: AssetImage('images/Map Icon.png')),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Container(
                      height: 335,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  )
                ],
              ),
              password(),
              SizedBox(
                height: 24,
              ),
              verifypassword(),
              SizedBox(
                height: 16,
              ),
              deletaccounttext(),
              SizedBox(
                height: 16,
              ),
              bottom(),
              SizedBox(
                height: 16,
              ),
            ],
          ))
        ],
      ),
    );
  }

  Widget circleavatar() {
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xff7E7E7E),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(
                  image: AssetImage('images/20220402_155626_500.jpg'),
                ),
              )),
          Positioned(
              right: 3,
              bottom: 3,
              child: Image(image: AssetImage('images/Add Icon.png')))
        ],
      ),
    );
  }

  Widget namefild() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
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
          height: 13,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Container(
              height: 45,
              child: TextFormField(
                controller: namecontroller,
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

  Widget lastnamefild() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
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
          height: 13,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Container(
              height: 45,
              child: TextFormField(
                controller: lastnamecontroller,
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

  Widget personelcode() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(':شماره پرسنلی', style: ThemeApp().grey.textTheme.headline1),
              SizedBox(
                width: 16,
              ),
              Image(image: AssetImage('images/Card Icon.png'))
            ],
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Container(
              height: 45,
              child: TextFormField(
                controller: personalcontroller,
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

  Widget phonenumber() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(':شماره همراه', style: ThemeApp().grey.textTheme.headline1),
              SizedBox(
                width: 16,
              ),
              Image(image: AssetImage('images/Phone Icon.png'))
            ],
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Container(
              height: 45,
              child: TextFormField(
                controller: phonenumbercontroller,
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

  Widget companyname() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(':اسم شرکت', style: ThemeApp().grey.textTheme.headline1),
              SizedBox(
                width: 16,
              ),
              Image(image: AssetImage('images/Company Icon.png'))
            ],
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Container(
              height: 45,
              child: TextFormField(
                controller: companycontroller,
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

  Widget companycode() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(':کد ثبت شرکت ', style: ThemeApp().grey.textTheme.headline1),
              SizedBox(
                width: 16,
              ),
              Image(image: AssetImage('images/Number Icon.png'))
            ],
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Container(
              height: 45,
              child: TextFormField(
                controller: companycodecontroller,
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

  Widget password() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(':کلمه عبور جدید',
                  style: ThemeApp().grey.textTheme.headline1),
              SizedBox(
                width: 16,
              ),
              Image(image: AssetImage('images/Lock Icon.png'))
            ],
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Container(
              height: 45,
              child: TextFormField(
                controller: passwordcontroller,
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

  Widget verifypassword() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(':تکرار کلمه عبور جدید',
                  style: ThemeApp().grey.textTheme.headline1),
              SizedBox(
                width: 16,
              ),
              Image(image: AssetImage('images/Lock Icon.png'))
            ],
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Container(
              height: 45,
              child: TextFormField(
                controller: verifypasswordcontroller,
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

  Widget deletaccounttext() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
              onPressed: (() {}),
              child: Text(
                'حذف اکانت',
                style: ThemeApp().red.textTheme.headline1,
              )),
          Text(
            'آیا میخواهید اکانت خود را حذف کنید؟',
            style: ThemeApp().grey.textTheme.headline1,
          ),
        ],
      ),
    );
  }

  Widget bottom() {
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
  }
}
