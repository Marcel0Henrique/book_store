import 'package:book_store/controllers/login_controller.dart';
import 'package:book_store/views/login_view.dart';
import 'package:book_store/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: ((_) => LoginController()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        primaryColor: Colors.yellow,
        scaffoldBackgroundColor: Colors.yellow,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashFuturePage(),
        "/login": (context) => LoginView(),
      },
    );
  }
}
