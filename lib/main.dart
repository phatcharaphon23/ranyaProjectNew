import 'package:fluttenew/states/Home/body.dart';
import 'package:fluttenew/states/Packaging/packaging_screen.dart';
import 'package:fluttenew/states/create_account.dart';
import 'package:fluttenew/states/home.dart';
import 'package:fluttenew/utility/my_constant.dart';
import 'package:flutter/material.dart';
import 'package:fluttenew/states/authen.dart';
import 'package:fluttenew/states/home.dart';

final Map<String, WidgetBuilder> map = {
  '/body': (BuildContext context) => Body(),
  '/home': (BuildContext context) => Home(),
  '/authen': (BuildContext context) => Authen(),
  '/createAccount': (BuildContext context) => CreateAccount(),
  '/packagingScreen': (BuildContext context) => PackagingScreen(),
};

String? initlalRoute;

void main() {
  initlalRoute = Myconstant.routePackagingScreen;
  // initlalRoute = Myconstant.routeBody;
  // initlalRoute = Myconstant.routeHome;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Myconstant.appName,
      routes: map,
      initialRoute: initlalRoute,
    );
  }
}
