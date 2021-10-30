import 'package:fluttenew/states/Home/bottom_nav_bar.dart';
import 'package:fluttenew/states/Home/title_with_more.dart';
import 'package:fluttenew/states/Packaging/packaging_screen.dart';
import 'package:fluttenew/states/Packaging/packaging_screen.dart';
import 'package:fluttenew/utility/my_constant.dart';
import 'package:fluttenew/widgets/category_card.dart';
import 'package:fluttenew/widgets/show_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size * 0.8,
            decoration: BoxDecoration(
              color: Myconstant.primary,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    // ignore: prefer_const_constructors
                    child: Align(
                      alignment: Alignment.topRight,
                    ),
                  ),
                  //แต่งด้วยน่ะอันนี้
                  Text(
                    "Welcome Home!! ",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        color: Colors.white54),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 40),
                    padding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 3.5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 25,
                      children: <Widget>[
                        CategoryCard(
                          title: "Packaging",
                          svgSrc: "assets/icons/export.png",
                          onpress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PackagingScreen(),
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Information",
                          svgSrc: "assets/icons/supplements.png",
                          onpress: () {
                            // Navigator.pushNamed(context, '/authen');
                          },
                        ),
                        CategoryCard(
                          title: "History",
                          svgSrc: "assets/icons/timetable.png",
                          onpress: () {},
                        ),
                        CategoryCard(
                          title: "แปะไว้ก่อน",
                          svgSrc: "assets/icons/test.png",
                          onpress: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
