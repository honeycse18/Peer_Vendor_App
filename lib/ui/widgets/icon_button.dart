import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Icon_Button extends StatelessWidget {
  Icon_Button({
    required this.onPressed,
    required this.IconSize,
    this.avaterColor,
    this.textColor,
    super.key,
    required this.title,
    this.Icon,
    required this.iconColor,
  });

  VoidCallback onPressed;
  Color? avaterColor;
  //final BorderRadius;
  Color? textColor;

  double IconSize;
  String title;
  dynamic Icon;
  Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
              backgroundColor: avaterColor,
              maxRadius: 25,
              // minRadius: 15,
              child: IconButton(
                icon: Icon,
                color: iconColor,
                iconSize: IconSize,
                onPressed: onPressed,
              )),
          SizedBox(
            height: 15.h,
          ),
          Container(
            child: Text(title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp,
                    color: textColor)),
          )
        ],
      ),
    );
  }
}
