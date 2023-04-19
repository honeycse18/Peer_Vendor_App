import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peer_vendors/ui/routes/nav_bar/bottom_nav_controller.dart';
import 'package:peer_vendors/ui/routes/nav_bar/home.dart';

class WellDone extends StatefulWidget {
  const WellDone({super.key});

  @override
  State<WellDone> createState() => _WellDoneState();
}

class _WellDoneState extends State<WellDone> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(context,
            CupertinoPageRoute(builder: (_) => Bottom_Nav_Controller())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logos/check 1.png'),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Well-Done!",
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
