import 'package:fluttenew/states/Home/body.dart';
import 'package:fluttenew/states/Home/show_sigout.dart';
import 'package:fluttenew/states/create_account.dart';
import 'package:fluttenew/widgets/show_title.dart';
import 'package:flutter/material.dart';
import 'package:fluttenew/utility/my_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'authen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: buildAppBar(),
      // bottomNavigationBar: MenuBAr(),
      body: const Body(),

      // drawer: Drawer(
      //   child: Stack(
      //     children: [
      //       ShowSignOut(),
      //       Column(
      //         children: [
      //           UserAccountsDrawerHeader(accountName: null, accountEmail: null),
      //           menuShowSingIn(),
      //           menuShowCreateAccount(),
      //         ],
      //       )
      //     ],
      //   ),
      // ), //body: widgets[indexWidget],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Myconstant.primary,
      elevation: 0,

      // leading: IconButton(
      //   // ignore: prefer_const_constructors
      //   icon: Icon(Icons.menu),

      //   onPressed: () {},

      // ),
    );
  }
}
