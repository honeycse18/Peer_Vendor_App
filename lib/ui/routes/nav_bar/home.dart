import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peer_vendors/ui/const/colors.dart';

import '../../widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 233, 233),
      appBar: AppBar(
        leading: Icon(
          Icons.location_on,
          color: AppColor.light_pink,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Rahim Nagar, Khulna',
          style: TextStyle(color: AppColor.deep_grey),
        ),
        actions: [
          CircleAvatar(
            radius: 14.r,
            backgroundColor: AppColor.deep_grey,
            child: CircleAvatar(
              radius: 12.r,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.question_mark,
                color: AppColor.deep_grey,
              ),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
              child: Container(
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    suffixIconColor: Colors.black,
                    hoverColor: Colors.black,
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Search Your Product',
                    hintStyle: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: [
                  Container(
                    height: 40.h,
                    width: 140.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Text(
                        "Cars, Bikes, Bicycles",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    height: 40.h,
                    width: 165.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Text(
                        "Electronics & Appliances",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 300.h,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset('assets/logos/3516854 1.png'),
                  Text(
                    "No Products Available in Your Area.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: AppColor.deep_grey),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.pushNamed(context, '/otp');
                    },
                    buttonText: 'Search in nearby',
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
                    height: 50.h,
                    width: 320.w,
                    buttonColor: AppColor.purple,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.pushNamed(context, '/otp');
                    },
                    buttonText: 'Put up something for Sale',
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
                    height: 50.h,
                    width: 320.w,
                    buttonColor: AppColor.purple,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
