import 'package:fluttenew/states/Home/show_sigout.dart';
import 'package:fluttenew/utility/my_constant.dart';
import 'package:fluttenew/widgets/show_title.dart';
import 'package:flutter/material.dart';

import '../authen.dart';
import '../create_account.dart';
import 'body.dart';

class MenuBAr extends StatefulWidget {
  const MenuBAr({Key? key}) : super(key: key);

  @override
  _MenuBArState createState() => _MenuBArState();
}

class _MenuBArState extends State<MenuBAr> {
  // List<Widget> widgets = [
  //   Authen(),
  //   CreateAccount(),
  // ];
  // int indexWidget = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Stack(
          children: [
            ShowSignOut(),
            Column(
              children: [
                UserAccountsDrawerHeader(accountName: null, accountEmail: null),
                menuShowSingIn(),
                menuShowCreateAccount(),
              ],
            )
          ],
        ),
      ),
    );
  }

  ListTile menuShowSingIn() {
    return ListTile(
      onTap: () {
        setState(() {});
      },
      leading: Icon(Icons.account_circle),
      title: ShowTitle(
        title: "sing in",
        textStyle: Myconstant().h2BlackStyle(),
      ),
    );
  }

  ListTile menuShowCreateAccount() {
    return ListTile(
      onTap: () {
        setState(() {});
      },
      leading: Icon(Icons.add_circle_outline),
      title: ShowTitle(
        title: "create account",
        textStyle: Myconstant().h2BlackStyle(),
      ),
    );
  }
}
