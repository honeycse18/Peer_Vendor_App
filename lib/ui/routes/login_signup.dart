import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peer_vendors/ui/const/colors.dart';
import 'package:peer_vendors/ui/widgets/button.dart';

import '../widgets/icon_button.dart';

class LoginSignUp extends StatelessWidget {
  const LoginSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/logos/logo.png',
                  height: 80.h,
                  width: 80.w,
                ),
                SizedBox(
                  height: 30.w,
                ),
                Text(
                  'Let’s Get Started.',
                  style: TextStyle(
                    color: AppColor.deep_grey,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'If you continue, you are accepting Our Terms & Conditions and ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      'Privacy Policy.',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 55.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      buttonText: 'Register',
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
                      height: 20.w,
                    ),
                    CustomButton(
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        buttonText: 'Login',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        borderColor: Colors.blue,
                        buttonColor: AppColor.purple,
                        textColor: Colors.white,
                        topright: 10.0,
                        topleft: 10.0,
                        bottomleft: 10.0,
                        bottomright: 10.0,
                        height: 55.h,
                        width: 320.w),
                    SizedBox(
                      height: 30.w,
                    ),
                    Text(
                      'OR Continue With',
                      style: TextStyle(
                        color: AppColor.deep_grey,
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon_Button(
                      onPressed: () {},
                      IconSize: 45,
                      avaterColor: Colors.grey,
                      iconColor: Colors.transparent,
                      title: '',
                      Icon: Image.asset('assets/logos/google.png'),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Icon_Button(
                      onPressed: () {},
                      IconSize: 45,
                      avaterColor: Colors.grey,
                      iconColor: Colors.transparent,
                      title: '',
                      Icon: Image.asset('assets/logos/facebook.png'),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Icon_Button(
                      onPressed: () {},
                      IconSize: 45,
                      avaterColor: Colors.grey,
                      iconColor: Colors.transparent,
                      title: '',
                      Icon: Image.asset('assets/logos/twitter.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.w,
                ),
                Row(
                  children: [
                    Image.asset('assets/logos/play-button.png'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Need Help ?',
                      style: TextStyle(
                        color: AppColor.light_pink,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
