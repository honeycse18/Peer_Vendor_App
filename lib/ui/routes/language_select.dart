import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/colors.dart';
import '../widgets/button.dart';

class RadiButtonScreen extends StatefulWidget {
  const RadiButtonScreen({super.key});

  @override
  State<RadiButtonScreen> createState() => _RadiButtonScreenState();
}

class _RadiButtonScreenState extends State<RadiButtonScreen> {
  String current_value = 'English';
  List<String> Language = [
    'English',
    'Kiswahili',
    'Francais',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 400.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                        color: AppColor.light_pink,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 60, left: 30, right: 20),
                      child: Column(
                        children: [
                          Text(
                            "Choose Your Language",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          for (int i = 0; i < Language.length; i++)
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  customRadioButton(
                                    Language[i],
                                    current_value,
                                    (p0) => setState(
                                      () {
                                        current_value = p0;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    Language[i],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          SizedBox(
                            height: 50.h,
                          ),
                          CustomButton(
                            onTap: () {
                              Navigator.pushNamed(context, '/onboarding');
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
                            height: 40.h,
                            width: 150.w,
                            buttonColor: AppColor.purple,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -80,
                    right: 40,
                    left: 40,
                    child: CircleAvatar(
                      maxRadius: 60.r,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'assets/logos/logo.png',
                        height: 100.h,
                        width: 100.w,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customRadioButton(
    String _value, String group_Value, Function(dynamic) onValueChanged) {
  return Radio(
    value: _value,
    groupValue: group_Value,
    onChanged: (data) {
      onValueChanged(data!);
    },
    activeColor: Color.fromARGB(255, 9, 165, 4),
  );
}
