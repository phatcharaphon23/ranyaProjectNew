import 'package:fluttenew/utility/my_constant.dart';
import 'package:flutter/material.dart';
// ignore: unused_import

class PackagingScreen extends StatefulWidget {
  const PackagingScreen({Key? key}) : super(key: key);

  @override
  _PackagingScreenState createState() => _PackagingScreenState();
}

class _PackagingScreenState extends State<PackagingScreen> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'packaging',
        ),
        backgroundColor: Myconstant.primary,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          // ignore: prefer_const_constructors
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(children: <Widget>[
        Container(
          height: size * 0.5,
          decoration: BoxDecoration(
            color: Myconstant.primary,
          ),
        ),

        // onPressed: () {
        //   Navigator.pop(context);
        //   // Navigate back to first route when tapped.
        // },

        // ignore: prefer_const_constructors
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
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: <Widget>[],
                    ),
                  )
                ]),
          ),
        )
      ]),
    );
  }

  // ignore: non_constant_identifier_names
  // Widget Tabs(BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Container(
  //         // child: ,

  //         ),
  //   );
  // }
}
