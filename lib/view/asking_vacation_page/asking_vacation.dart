import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tik_go/models/ascing_vacation_status.dart';
import 'package:tik_go/providers/asking_vacation_provider.dart';
import 'package:tik_go/theme/theme.dart';

class AskingVacation extends StatefulWidget {
  const AskingVacation({super.key});

  @override
  State<AskingVacation> createState() => _AskingVacationState();
}

class _AskingVacationState extends State<AskingVacation> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController fromcontroller = TextEditingController();
  TextEditingController tocontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 24,
      ),
      textrequest(),
      SizedBox(
        height: 13,
      ),
      optionbuttom(),
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

  Widget textrequest() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(':نوع درخواست', style: ThemeApp().grey.textTheme.headline1),
          SizedBox(
            width: 16,
          ),
          Image(image: AssetImage('images/Asking Icon.png'))
        ],
      ),
    );
  }

  Widget textfilds() {
    return Consumer<AskingVacationProvider>(
        builder: (context, AskingVacationProvider, childe) {
      return Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(AskingVacationProvider.fromtime,
                      style: ThemeApp().grey.textTheme.headline1),
                  SizedBox(
                    width: 16,
                  ),
                  Image(
                      image: AssetImage(
                          'images/${AskingVacationProvider.status == vacationstatus.hour ? 'Clocl Icon' : 'Calender Icon'}.png'))
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
                  Text(AskingVacationProvider.gettotime,
                      style: ThemeApp().grey.textTheme.headline1),
                  SizedBox(
                    width: 16,
                  ),
                  Image(
                      image: AssetImage(
                          'images/${AskingVacationProvider.status == vacationstatus.hour ? 'Clocl Icon' : 'Calender Icon'}.png'))
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
    });
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

  Widget optionbuttom() {
    return Consumer<AskingVacationProvider>(
        builder: (context, AskingVacationProvider, childe) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: (() {
                AskingVacationProvider.fromtimeseter = ':ازتاریخ';
                AskingVacationProvider.totimeseter = ':تاتاریخ';
                AskingVacationProvider.status = vacationstatus.day;
                fromcontroller.text = '';
                tocontroller.text = '';
              }),
              style: ElevatedButton.styleFrom(
                  elevation: 5,
                  minimumSize: Size(160, 45),
                  backgroundColor:
                      AskingVacationProvider.isclikget == vacationstatus.day
                          ? Color(0xff332FD0)
                          : Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Text('روزانه',
                  style: AskingVacationProvider.isclikget == vacationstatus.day
                      ? ThemeApp().white.textTheme.headline1
                      : ThemeApp().black.textTheme.headline1),
            ),
            ElevatedButton(
              onPressed: (() {
                AskingVacationProvider.fromtimeseter = ':ازساعت';
                AskingVacationProvider.totimeseter = ':تاساعت';
                AskingVacationProvider.status = vacationstatus.hour;
                fromcontroller.text = '';
                tocontroller.text = '';
              }),
              style: ElevatedButton.styleFrom(
                  elevation: 5,
                  minimumSize: Size(160, 45),
                  backgroundColor:
                      AskingVacationProvider.isclikget == vacationstatus.hour
                          ? Color(0xff332FD0)
                          : Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Text('ساعتی',
                  style: AskingVacationProvider.isclikget == vacationstatus.hour
                      ? ThemeApp().white.textTheme.headline1
                      : ThemeApp().black.textTheme.headline1),
            )
          ],
        ),
      );
    });
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
