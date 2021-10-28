import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'body.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      height: 60,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNaItem(
            title: "Scan",
            svgScr: "assets/icons/scan.png",
            onpress: () {},
          ),
          BottomNaItem(
            svgScr: "assets/icons/home2.png",
            title: "Home",
            onpress: () {},
            isActive: true,
          ),
          BottomNaItem(
            svgScr: "assets/icons/profile.png",
            title: "Profile",
            onpress: () {},
          ),
        ],
      ),
    );
  }
}

class BottomNaItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function()? onpress;
  final bool isActive;
  const BottomNaItem(
      {Key? key,
      required this.svgScr,
      required this.title,
      required this.onpress,
      this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            width: 30,
            child: Image.asset(
              svgScr,
              // color: isActive?
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
