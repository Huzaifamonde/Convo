import 'package:convo1/screens/home_screen.dart';
import 'package:convo1/screens/login_page.dart';
import 'package:convo1/routes.dart';
import 'package:flutter/material.dart';
import 'package:convo1/screens/welcome_page.dart';
import 'package:convo1/screens/otp_page.dart';
import 'package:convo1/theme.dart';

void main() {
  runApp(convoApp());
}

class convoApp extends StatelessWidget {
  const convoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().light,
      darkTheme: AppTheme().dark,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoute.welcomePage,
      routes: {
        "/": (context) => welcome(),
        MyRoute.loginPage: (context) => login(),
        MyRoute.welcomePage: (context) => welcome(),
        MyRoute.otpCard: (context) => OTPCard(),
        MyRoute.homePage: (context) => home_screen(),
      },
    );
  }
}
