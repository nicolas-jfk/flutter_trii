import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Widget_Title extends StatelessWidget {
  String text3;
  String text4;
  Color color;
  Widget_Title(this.text3, this.text4, this.color);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text3,
            style: TextStyle(
                color: color, fontSize: 50.sp, fontWeight: FontWeight.bold)),
        Container(
          margin: const EdgeInsets.only(top: 6, bottom: 6),
          width: 70.w,
          height: 1.h,
          decoration: BoxDecoration(color: color),
        ),
        Text(
          text4,
          style: TextStyle(color: color, fontSize: 35.sp),
        )
      ],
    );
  }
}
