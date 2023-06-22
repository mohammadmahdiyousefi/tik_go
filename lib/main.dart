import 'package:flutter/material.dart';
import 'package:tik_go/providers/asking_vacation_provider.dart';
import 'package:tik_go/providers/change_founder_report_trafic_page.dart';
import 'package:tik_go/providers/change_screen_provider.dart';
import 'package:tik_go/providers/choischep_provider.dart';
import 'package:tik_go/providers/time_provider.dart';
import 'package:tik_go/view/account_founder_page/accountfounder.dart';
import 'package:tik_go/view/home_page/home_screen.dart';
import 'package:tik_go/widget/appbar.dart';
import 'package:tik_go/widget/drawer.dart';
import 'package:provider/provider.dart';
import 'view/loginpages/login_0_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: ((context) => ChoischepProvider())),
      ChangeNotifierProvider(create: ((context) => ChangeScreenProvider())),
      ChangeNotifierProvider(create: ((context) => AskingVacationProvider())),
      ChangeNotifierProvider(create: ((context) => TimerProvider())),
      ChangeNotifierProvider(
          create: ((context) => ChangeFounderReporttraficPage())),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Consumer<ChangeScreenProvider>(
          builder: (context, ChangeScreenProvider, child) {
            return ChangeScreenProvider.getscreen == null
                ? const Login0Screen()
                : Scaffold(
                    resizeToAvoidBottomInset: false,
                    appBar: AppBarWidget(
                        titel: ChangeScreenProvider.getappbartitel),
                    endDrawer: const Drawerwidgwet(),
                    body: ChangeScreenProvider.curentscreen);
          },
        ));
  }
}
