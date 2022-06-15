import 'dart:async';

import 'package:book_store/views/login_view.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashFuturePage extends StatefulWidget {
  SplashFuturePage({Key? key}) : super(key: key);

  @override
  _SplashFuturePageState createState() => _SplashFuturePageState();
}

class _SplashFuturePageState extends State<SplashFuturePage> {
  Future<Widget> futureCall() async {
    // do async operation ( api call, auto login)

    await Future.delayed(Duration(seconds: 5));
    return Future.value(LoginView());
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      showLoader: true,
      logo: Image.asset("assets/images/logo.png"),
      logoSize: MediaQuery.of(context).size.width * 0.2,
      title: Text(
        "Book Store",
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.1,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.yellow,
      futureNavigator: futureCall(),
    );
  }
}
