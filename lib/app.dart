import 'package:agri_care/pages/calculate_history_page.dart';
import 'package:agri_care/pages/calculate_page.dart';
import 'package:agri_care/pages/login_page.dart';
import 'package:agri_care/pages/main_page.dart';
import 'package:agri_care/pages/notification_page.dart';
import 'package:agri_care/pages/onboarding_page.dart';
import 'package:agri_care/pages/order_page.dart';
import 'package:agri_care/pages/register_page.dart';
import 'package:agri_care/pages/shop_detail_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: OnBoardingPage.routeName,
      theme: ThemeData.light().copyWith(
          // accentColor: Color(0xfff7ca6c),
          // TODO replace theme font
          toggleableActiveColor: Color(0xfff7ca6c),
          inputDecorationTheme: InputDecorationTheme(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            border: OutlineInputBorder(
                borderSide: BorderSide(
              width: 2.0,
              color: Color(0x52000000),
            )),
            isDense: true,
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              width: 2.0,
              color: Color(0x52000000),
            )),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              width: 2.0,
              color: Color(0x52000000),
            )),
          ),
          buttonColor: Colors.green.shade400,
          bottomAppBarColor: Colors.green.shade400,
          bottomAppBarTheme: BottomAppBarTheme(
            color: Colors.green.shade400,
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.green.shade400,
            shape: StadiumBorder(),
            textTheme: ButtonTextTheme.normal,
          )),
      routes: {
        OnBoardingPage.routeName: (context) => OnBoardingPage(),
        LoginPage.routeName: (context) => LoginPage(),
        RegisterPage.routeName: (context) => RegisterPage(),
        MainPage.routeName: (context) => MainPage(),
        CalculatePage.routeName: (context) => CalculatePage(),
        OrderPage.routeName: (context) => OrderPage(),
        CalculateHistoryPage.routeName: (context) => CalculateHistoryPage(),
        NotificationPage.routeName: (context) => NotificationPage(),
        ShopDetailPage.routeName: (context) => ShopDetailPage(),
      },
    );
  }
}
