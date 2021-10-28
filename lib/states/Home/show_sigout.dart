import 'package:fluttenew/utility/my_constant.dart';
import 'package:fluttenew/widgets/show_title.dart';
import 'package:flutter/material.dart';

class ShowSignOut extends StatelessWidget {
  const ShowSignOut({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ListTile(
            onTap: () async{
              //ต้องสร้างตัว route เพื่อออกจากระบบนะขั้นตอนนี้ยังไม่เสร็จนะงับ
            },
            tileColor: Colors.grey.shade300,
            leading: Icon(
              Icons.exit_to_app,
              color: Myconstant.dark,
            ),
            title: ShowTitle(
              title: 'sign out',
              textStyle: Myconstant().h2Style(),
            ),
          ),
        ],
      );
  }
}