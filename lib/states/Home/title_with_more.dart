import 'package:fluttenew/utility/my_constant.dart';
import 'package:flutter/material.dart';

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  margin: const EdgeInsets.only(),
                  height: 1.5,
                  color: Myconstant.light)),
        ],
      ),
    );
  }
}

// class TextMenu extends StatelessWidget {
//   const TextMenu({
//     Key? key,
//     required this.text,
//   }) : super(key: key);

//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     double size = MediaQuery.of(context).size.width;
//     return Container(
//       height: 24,
//       child: Stack(
//         children: <Widget>[
//           Text(
//             text,
//             style: TextStyle(
//               fontSize: 20,
//             ),
//           ),
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               height: size * 0.005,
//               color: Myconstant.dark,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
