import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peer_vendors/ui/routes/onboarding.dart';

import '../const/colors.dart';
import '../widgets/button.dart';

class Otp_Page extends StatefulWidget {
  Otp_Page({super.key});

  @override
  State<Otp_Page> createState() => _Otp_PageState();
}

class _Otp_PageState extends State<Otp_Page> {
  @override
  final _numberController = TextEditingController();
  var valueChoose = "-1";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
            body: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logos/logo.png',
                  height: 130.h,
                  width: 130.w,
                ),
                SizedBox(
                  height: 50.h,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: TextField(
                                  controller: _numberController,
                                  decoration: InputDecoration(
                                    hintText: 'Enter 6 digit OTP Code',
                                    hintStyle: TextStyle(
                                      fontSize: 18.sp,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                              CustomButton(
                                onTap: () {
                                  Navigator.pushNamed(context, '/weldone');
                                },
                                buttonText: 'Continues',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                                borderColor: Colors.blue,
                                textColor: Colors.white,
                                topright: 10.0,
                                topleft: 10.0,
                                bottomleft: 10.0,
                                bottomright: 10.0,
                                height: 55.h,
                                width: 320.w,
                                buttonColor: AppColor.purple,
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
