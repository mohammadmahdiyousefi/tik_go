import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tik_go/models/ascing_vacation_status.dart';
import 'package:tik_go/providers/asking_vacation_provider.dart';
import 'package:tik_go/theme/theme.dart';

class AskingOvertime extends StatefulWidget {
  const AskingOvertime({super.key});

  @override
  State<AskingOvertime> createState() => _AskingOvertimeState();
}

class _AskingOvertimeState extends State<AskingOvertime> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController fromcontroller = TextEditingController();
  TextEditingController tocontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 24,
      ),
      textfilds(),
      SizedBox(
        height: 24,
      ),
      description(),
      SizedBox(
        height: 24,
      ),
      askingbuttom()
    ]);
  }

  Widget textfilds() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(':از ساعت', style: ThemeApp().grey.textTheme.headline1),
                SizedBox(
                  width: 16,
                ),
                Image(image: AssetImage('images/Clocl Icon.png'))
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Container(
                height: 45,
                child: TextFormField(
                  controller: fromcontroller,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffF4F4F4), width: 1),
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
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(':تا ساعت', style: ThemeApp().grey.textTheme.headline1),
                SizedBox(
                  width: 16,
                ),
                Image(image: AssetImage('images/Clocl Icon.png'))
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Container(
                height: 45,
                child: TextFormField(
                  controller: tocontroller,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffF4F4F4), width: 1),
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
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(':در تاریخ', style: ThemeApp().grey.textTheme.headline1),
                SizedBox(
                  width: 16,
                ),
                Image(image: AssetImage('images/Calender Icon.png'))
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Container(
                height: 45,
                child: TextFormField(
                  controller: tocontroller,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffF4F4F4), width: 1),
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
      ),
    );
  }

  Widget description() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(':توضیحات', style: ThemeApp().grey.textTheme.headline1),
              SizedBox(
                width: 16,
              ),
              Image(
                image: AssetImage('images/question.png'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Card(
            margin: EdgeInsets.symmetric(horizontal: 20),
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Container(
              height: 200,
              width: double.infinity,
            )),
      ],
    );
  }

  Widget askingbuttom() {
    return ElevatedButton(
      onPressed: (() {}),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(160, 48),
          backgroundColor: Color(0xff332FD0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      child: Text('ثبت درخواست', style: ThemeApp().white.textTheme.headline2),
    );
  }
}
