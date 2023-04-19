import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../const/colors.dart';
import '../widgets/button.dart';

class Onboarding extends StatefulWidget {
  Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List items = [
    {
      'image': 'assets/images/welcome.png',
      'title': 'Welcome to Peer Vendor',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque. '
    },
    {
      'image': 'assets/images/unlock.png',
      'title': 'Find Your Favourite Products',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque. '
    },
    {
      'image': 'assets/images/healthy.png',
      'title': 'Buy & Sell Around You',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque. '
    },
    {
      'image': 'assets/images/business_deal.png',
      'title': 'Safe & Trusted',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque. '
    },
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Image.asset(
              items[currentIndex]['image'],
            ),
          ),
          DotsIndicator(
            dotsCount: items.length,
            position: currentIndex.toDouble(),
            decorator: const DotsDecorator(
              color: Colors.grey,
              activeColor: Color.fromARGB(255, 226, 87, 82),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              child: Padding(
                padding: EdgeInsets.only(top: 40, left: 35, right: 35),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      items[currentIndex]['title'],
                      style: TextStyle(
                          color: AppColor.deep_grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.sp),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      items[currentIndex]['description'],
                      style: TextStyle(
                          color: Color.fromARGB(255, 143, 142, 142),
                          fontSize: 18.sp),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                onTap: () {
                  if (currentIndex < 2) {
                    setState(() {});
                    currentIndex++;
                  } else
                    Navigator.pushNamed(context, '/login');
                },

                buttonText: 'SKIP',
                style: TextStyle(fontWeight: FontWeight.bold),
                buttonColor: Colors.transparent,
                textColor: AppColor.light_pink,
                borderColor: Colors.transparent,
                topleft: 0.0,
                topright: 40.0,
                bottomleft: 0.0,
                bottomright: 0.0,
                height: 70,
                width: 205,
                // BorderRadius: 10,
              ),
              CustomButton(
                onTap: () {
                  if (currentIndex < 2) {
                    setState(() {});
                    currentIndex++;
                  } else
                    Navigator.pushNamed(context, '/loginSignup');
                },

                buttonText: 'NEXT',
                style: TextStyle(fontWeight: FontWeight.bold),
                buttonColor: Colors.grey,
                textColor: Colors.black,
                borderColor: Colors.transparent,
                bottomleft: 0.0,
                bottomright: 0.0,
                topleft: 40.0,
                topright: 0.0, height: 70, width: 205,
                // BorderRadius: 10,
              ),
            ],
          ),
        ],
      ))),
    );
  }
}
