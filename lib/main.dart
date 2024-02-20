import 'package:S_Booking_Demo/%20ingredient/event_containerHome.dart';
import 'package:S_Booking_Demo/CreateEvent.dart';
import 'package:S_Booking_Demo/Views/LoginPage.dart';
import 'package:S_Booking_Demo/Views/OppsPage.dart';
import 'package:S_Booking_Demo/Views/SettingAccount.dart';
import 'package:S_Booking_Demo/Views/homedemo.dart';
import 'package:S_Booking_Demo/provider/theme_provider.dart';
//import 'package:S_Booking_Demo/theme/Dark_Light_mode.dart';
import 'package:S_Booking_Demo/validators/Login_validation.dart';
import 'package:flutter/material.dart';

import ' ingredient/TimeTable.dart';
import 'Views/OTPPage.dart';
import 'Views/SeachBar.dart';
import 'Views/WelcomePage.dart';

void main() {
  runApp(const MyApp());
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
      themeMode: ThemeMode.system,
      //theme: MyTheme.whiteTheme,
      //darkTheme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: GoWelcomePage(context),
    );
  }
}

Widget GoWelcomePage (BuildContext context) {
  return WelcomePage();

}