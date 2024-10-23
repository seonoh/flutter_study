import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

const List<String> choices = ['신고', '알림 설정', '공유'];

class HeaderWidget extends StatelessWidget {
  void select(String choice) {
    Fluttertoast.showToast(
        msg: "$choice is clicked",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('images/lab_instagram_icon_0.jpg'),
        Container(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'instagram',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Spacer(),
        PopupMenuButton(
            onSelected: select,
            itemBuilder: (BuildContext context) {
              return choices.map<PopupMenuItem<String>>((String choice) {
                return PopupMenuItem<String>(
                    value: choice, child: Text(choice));
              }).toList();
            })
      ],
    );
  }
}
