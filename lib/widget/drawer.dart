import 'package:provider/provider.dart';

import 'package:tik_go/models/drawer_list_item.dart';
import 'package:tik_go/models/drawer_option.dart';

import 'package:tik_go/providers/change_screen_provider.dart';
import 'package:tik_go/providers/choischep_provider.dart';
import 'package:tik_go/providers/time_provider.dart';
import 'package:tik_go/view/quid_screen/quide-page.dart';

import 'package:tik_go/theme/theme.dart';
import 'package:flutter/material.dart';

import '../view/about_screen/about_page.dart';
import '../view/account_page/account.dart';
import '../view/asking_overtime_page/asking_overtime.dart';
import '../view/asking_vacation_page/asking_vacation.dart';
import '../view/home_page/home_screen.dart';
import '../view/notification_page.dart/notification.dart';
import '../view/reportoperation/report_operation.dart';
import '../view/reportovertimepages/report_overtime.dart';
import '../view/reporttrafickpages/report_trafick.dart';
import '../view/reportvacationepages/report_vacation.dart';

class Drawerwidgwet extends StatefulWidget {
  const Drawerwidgwet({super.key});

  @override
  State<Drawerwidgwet> createState() => _DrawerwidgwetState();
}

class _DrawerwidgwetState extends State<Drawerwidgwet> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              circelavatar(),
              SizedBox(
                height: 20,
              ),
              nameandskil(name: 'محمد مهدی یوسفی', skill: 'برنامه نویس'),
              SizedBox(
                height: 20,
              ),
              options(),
              logoutbotum()
            ],
          ),
        ),
      ),
    );
  }

  Widget circelavatar() {
    return CircleAvatar(
      radius: 40,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image(
          image: AssetImage('images/20220402_155626_500.jpg'),
        ),
      ),
    );
  }

  Widget nameandskil({required String name, required String skill}) {
    return Column(
      children: [
        Text(
          name,
          style: ThemeApp().black.textTheme.headline2,
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          skill,
          style: ThemeApp().grey.textTheme.headline2,
        ),
      ],
    );
  }

  Widget options() {
    return Consumer3<ChangeScreenProvider, ChoischepProvider, TimerProvider>(
        builder: (context, ChangeScreenProvider, ChoischepProvider,
            TimerProvider, child) {
      return Container(
        width: 200,
        height: 500,
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: ((context, index) {
              return Directionality(
                textDirection: TextDirection.rtl,
                child: items[index].submenu.length <= 0
                    ? InkWell(
                        onTap: () {
                          ChangeScreenProvider.setindex = index;
                          ChoischepProvider.setindex = 0;
                          if (items[index].status == DrawerOption.Home) {
                            ChangeScreenProvider.setstatus = DrawerOption.Home;
                            ChangeScreenProvider.setitemstatus =
                                DrawerOption.Home;
                            ChangeScreenProvider.setscreen = HomeScreen();
                            ChangeScreenProvider.setappbartitel = Column(
                              children: [
                                Text(
                                  '${TimerProvider.gethour}:${TimerProvider.getmin}',
                                  style: ThemeApp().black.textTheme.headline5,
                                ),
                              ],
                            );
                          }
                          if (items[index].status ==
                              DrawerOption.Notification) {
                            ChangeScreenProvider.setstatus =
                                DrawerOption.Notification;
                            ChangeScreenProvider.setitemstatus =
                                DrawerOption.Notification;
                            ChangeScreenProvider.setscreen =
                                NotificationFounder();
                            ChangeScreenProvider.setappbartitel = Text(
                              items[index].titel,
                              style: ThemeApp().black.textTheme.headline1,
                            );
                          }
                          if (items[index].status == DrawerOption.Account) {
                            ChangeScreenProvider.setstatus =
                                DrawerOption.Account;
                            ChangeScreenProvider.setitemstatus =
                                DrawerOption.Account;
                            ChangeScreenProvider.setscreen = AccountScreen();
                            ChangeScreenProvider.setappbartitel = Text(
                              items[index].titel,
                              style: ThemeApp().black.textTheme.headline1,
                            );
                          }
                          if (items[index].status == DrawerOption.Quide) {
                            ChangeScreenProvider.setstatus = DrawerOption.Quide;
                            ChangeScreenProvider.setitemstatus =
                                DrawerOption.Quide;
                            ChangeScreenProvider.setscreen = QuidePage();
                            ChangeScreenProvider.setappbartitel = Text(
                              items[index].titel,
                              style: ThemeApp().black.textTheme.headline1,
                            );
                          }
                          if (items[index].status == DrawerOption.About) {
                            ChangeScreenProvider.setstatus = DrawerOption.About;
                            ChangeScreenProvider.setitemstatus =
                                DrawerOption.About;
                            ChangeScreenProvider.setscreen = AboutPage();

                            ChangeScreenProvider.setappbartitel = Text(
                              items[index].titel,
                              style: ThemeApp().black.textTheme.headline1,
                            );
                          }
                        },
                        child: ListTile(
                          leading: Image(
                              image: AssetImage(
                                  'images/${ChangeScreenProvider.getstatus == items[index].status ? items[index].selecticon : items[index].icon}.png')),
                          title: Text(
                            items[index].titel,
                            style: ChangeScreenProvider.getstatus ==
                                    items[index].status
                                ? ThemeApp().blu.textTheme.headline1
                                : ThemeApp().black.textTheme.headline1,
                          ),
                        ),
                      )
                    : ExpansionTile(
                        initiallyExpanded: ChangeScreenProvider.getstatus ==
                                items[index].status
                            ? true
                            : false,
                        onExpansionChanged: (value) {
                          ChangeScreenProvider.setindex = index;
                        },
                        collapsedIconColor: Color(0xff202020),
                        iconColor: Color(0xff332FD0),
                        leading: Image(
                            image: AssetImage(
                                'images/${ChangeScreenProvider.getstatus == items[index].status ? items[index].selecticon : items[index].icon}.png')),
                        children: [
                          Container(
                            height: items[index].submenu.length * 40,
                            width: 400,
                            child: ListView.builder(
                                itemCount: items[index].submenu.length,
                                itemBuilder: ((context, indexn) {
                                  return InkWell(
                                    onTap: () {
                                      ChoischepProvider.setindex = 0;
                                      ChangeScreenProvider.setindex = index;
                                      if (items[index]
                                              .submenu[indexn]
                                              .itemstatus ==
                                          DrawerOption.Reporttrafic) {
                                        ChangeScreenProvider.setstatus =
                                            DrawerOption.Reports;
                                        ChangeScreenProvider.setitemstatus =
                                            DrawerOption.Reporttrafic;
                                        ChangeScreenProvider.setscreen =
                                            ReportScreen();
                                        ChangeScreenProvider.setappbartitel =
                                            Text(
                                          ' گزارش ${items[index].submenu[indexn].titel}',
                                          style: ThemeApp()
                                              .black
                                              .textTheme
                                              .headline1,
                                        );
                                      }
                                      if (items[index]
                                              .submenu[indexn]
                                              .itemstatus ==
                                          DrawerOption.Reportovertime) {
                                        ChangeScreenProvider.setstatus =
                                            DrawerOption.Reports;
                                        ChangeScreenProvider.setitemstatus =
                                            DrawerOption.Reportovertime;
                                        ChangeScreenProvider.setscreen =
                                            ReportOvertimeScreen();
                                        ChangeScreenProvider.setappbartitel =
                                            Text(
                                          ' گزارش ${items[index].submenu[indexn].titel}',
                                          style: ThemeApp()
                                              .black
                                              .textTheme
                                              .headline1,
                                        );
                                      }
                                      if (items[index]
                                              .submenu[indexn]
                                              .itemstatus ==
                                          DrawerOption.Reportvacation) {
                                        ChangeScreenProvider.setstatus =
                                            DrawerOption.Reports;
                                        ChangeScreenProvider.setitemstatus =
                                            DrawerOption.Reportvacation;
                                        ChangeScreenProvider.setscreen =
                                            ReportvacationScreen();
                                        ChangeScreenProvider.setappbartitel =
                                            Text(
                                          ' گزارش ${items[index].submenu[indexn].titel}',
                                          style: ThemeApp()
                                              .black
                                              .textTheme
                                              .headline1,
                                        );
                                      }

                                      if (items[index]
                                              .submenu[indexn]
                                              .itemstatus ==
                                          DrawerOption.Reportoperation) {
                                        ChangeScreenProvider.setstatus =
                                            DrawerOption.Reports;
                                        ChangeScreenProvider.setitemstatus =
                                            DrawerOption.Reportoperation;
                                        ChangeScreenProvider.setscreen =
                                            ReportOperationScreen();
                                        ChangeScreenProvider.setappbartitel =
                                            Text(
                                          ' گزارش ${items[index].submenu[indexn].titel}',
                                          style: ThemeApp()
                                              .black
                                              .textTheme
                                              .headline1,
                                        );
                                      }
                                      if (items[index]
                                              .submenu[indexn]
                                              .itemstatus ==
                                          DrawerOption.Askingovertime) {
                                        ChangeScreenProvider.setstatus =
                                            DrawerOption.Askings;
                                        ChangeScreenProvider.setitemstatus =
                                            DrawerOption.Askingovertime;
                                        ChangeScreenProvider.setscreen =
                                            AskingOvertime();
                                        ChangeScreenProvider.setappbartitel =
                                            Text(
                                          ' گزارش ${items[index].submenu[indexn].titel}',
                                          style: ThemeApp()
                                              .black
                                              .textTheme
                                              .headline1,
                                        );
                                      }
                                      if (items[index]
                                              .submenu[indexn]
                                              .itemstatus ==
                                          DrawerOption.Askingvacation) {
                                        ChangeScreenProvider.setstatus =
                                            DrawerOption.Askings;
                                        ChangeScreenProvider.setitemstatus =
                                            DrawerOption.Askingvacation;
                                        ChangeScreenProvider.setscreen =
                                            AskingVacation();
                                        ChangeScreenProvider.setappbartitel =
                                            Text(
                                          ' گزارش ${items[index].submenu[indexn].titel}',
                                          style: ThemeApp()
                                              .black
                                              .textTheme
                                              .headline1,
                                        );
                                      }
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          right: 32, bottom: 16),
                                      child: Text(
                                        items[index].submenu[indexn].titel,
                                        style: items[index]
                                                        .submenu[indexn]
                                                        .itemstatus ==
                                                    ChangeScreenProvider
                                                        .getitemstatus &&
                                                (items[index].status ==
                                                        DrawerOption.Askings ||
                                                    items[index].status ==
                                                        DrawerOption.Reports)
                                            ? ThemeApp().blu.textTheme.headline1
                                            : ThemeApp()
                                                .black
                                                .textTheme
                                                .headline1,
                                      ),
                                    ),
                                  );
                                })),
                          ),
                        ],
                        title: Text(
                          items[index].titel,
                          style: ChangeScreenProvider.getstatus ==
                                  items[index].status
                              ? ThemeApp().blu.textTheme.headline1
                              : ThemeApp().black.textTheme.headline1,
                        )),
              );
            })),
      );
    });
  }

  Widget logoutbotum() {
    return ListTile(
      onTap: () {},
      trailing: Image(image: AssetImage('images/Group 4.png')),
      title: Text(
        'خروج',
        style: ThemeApp().black.textTheme.headline1,
        textDirection: TextDirection.rtl,
      ),
    );
  }

  List<DrawerListItem> items = [
    DrawerListItem(
      'Home Icon',
      'Home Icon selected',
      'خانه',
      DrawerOption.Home,
      [],
    ),
    DrawerListItem(
      'Chart Icon',
      'Chart Icon selected',
      'گزارش',
      DrawerOption.Reports,
      [
        ItemList('تردد', DrawerOption.Reporttrafic),
        ItemList('اضافه کاری', DrawerOption.Reportovertime),
        ItemList('مرخصی', DrawerOption.Reportvacation),
        ItemList('عملکرد', DrawerOption.Reportoperation)
      ],
    ),
    DrawerListItem(
      'Asking Icon ',
      'Asking Icon selected',
      'درخواست',
      DrawerOption.Askings,
      [
        ItemList('اضافه کاری', DrawerOption.Askingovertime),
        ItemList('مرخصی', DrawerOption.Askingvacation)
      ],
    ),
    DrawerListItem('Notification Icon', 'Notification Icon selected', 'اعلان',
        DrawerOption.Notification, []),
    DrawerListItem(
      'Account Icon',
      'Account Icon selected',
      'حساب کاربری',
      DrawerOption.Account,
      [],
    ),
    DrawerListItem(
      'Guide Icon',
      'Guide Icon selected',
      'راهنما',
      DrawerOption.Quide,
      [],
    ),
    DrawerListItem(
      'About Us',
      'About Us selected',
      'درباره ما',
      DrawerOption.About,
      [],
    ),
  ];
}
