import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/app/modules/auth/view/login_page.dart';
import 'package:pizza_delivery_app/app/modules/splash/view/splash_page.dart';

import 'app/modules/home/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF9D0000),
        primarySwatch: Colors.red,
      ),
      initialRoute: SplashPage.router,
      routes: {
        SplashPage.router: (_) => SplashPage(),
        LoginPage.router: (_) => LoginPage(),
        HomePage.router: (_) => HomePage(),
      },
    );
  }
}
