import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/colors.dart';
import '../../widgets/button.dart';
import '../language_select.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String current_value = 'Edit Profile';
  List<String> Language = [
    'Edit Profile',
    'Language',
    'Logout',
    'Deactivate Account',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Settings",
            style: TextStyle(color: Colors.black, fontSize: 30.sp),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Column(
              children: [
                for (int i = 0; i < Language.length; i++)
                  Column(
                    children: [
                      Container(
                        height: 50.h,
                        color: Colors.white,
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
                                  color: AppColor.deep_grey, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                SizedBox(
                  height: 30.h,
                ),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/splash');
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
        ],
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
    activeColor: Color.fromARGB(255, 121, 119, 119),
  );
}
