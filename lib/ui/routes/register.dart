import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peer_vendors/ui/routes/onboarding.dart';

import '../const/colors.dart';
import '../widgets/button.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  final _nameController = TextEditingController();

  final _emailController = TextEditingController();
  final _numberController = TextEditingController();
  var valueChoose = "-1";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
            body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  //radius: 10.0,
                  backgroundColor: Colors.grey,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/loginSignup');
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      iconSize: 20.0,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Create An Account Now",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 170.w,
                height: 35.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 228, 227, 227),
                    borderRadius: BorderRadius.circular(10.0)),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: AppColor.purple,
                      borderRadius: BorderRadius.circular(10.0)),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                      text: 'Phone',
                    ),
                    Tab(
                      text: 'Email',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        width: double.infinity,
                        height: 550.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: TextField(
                                        controller: _nameController,
                                        decoration: InputDecoration(
                                          hintText: 'Full Name',
                                          hintStyle: TextStyle(
                                            fontSize: 18.sp,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Container(
                                      child: TextField(
                                        controller: _numberController,
                                        decoration: InputDecoration(
                                          hintText: 'Phone Number',
                                          hintStyle: TextStyle(
                                            fontSize: 18.sp,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    DropdownButtonFormField(
                                        value: valueChoose,
                                        items: [
                                          DropdownMenuItem(
                                            child: Text(
                                              "Select Your Country",
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            value: "-1",
                                          ),
                                          DropdownMenuItem(
                                            child: Text("America"),
                                            value: "1",
                                          ),
                                          DropdownMenuItem(
                                            child: Text("Bangladesh"),
                                            value: "2",
                                          ),
                                          DropdownMenuItem(
                                            child: Text("Canada"),
                                            value: "3",
                                          ),
                                        ],
                                        onChanged: (v) {}),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    CustomButton(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/otp');
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Already Have An Account? ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[600],
                                                fontSize: 16.sp),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: GestureDetector(
                                            onTap: () => Navigator.pushNamed(
                                                context, '/loginpage'),
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                text: 'Login',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue,
                                                    fontSize: 16.sp),
                                              )
                                            ])),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        width: double.infinity,
                        height: 550.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: TextField(
                                        controller: _nameController,
                                        decoration: InputDecoration(
                                          hintText: 'Full Name',
                                          hintStyle: TextStyle(
                                            fontSize: 18.sp,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Container(
                                      child: TextField(
                                        controller: _emailController,
                                        decoration: InputDecoration(
                                          hintText: 'Email Address',
                                          hintStyle: TextStyle(
                                            fontSize: 18.sp,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    DropdownButtonFormField(
                                        value: valueChoose,
                                        items: [
                                          DropdownMenuItem(
                                            child: Text(
                                              "Select Your Country",
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            value: "-1",
                                          ),
                                          DropdownMenuItem(
                                            child: Text("America"),
                                            value: "1",
                                          ),
                                          DropdownMenuItem(
                                            child: Text("Bangladesh"),
                                            value: "2",
                                          ),
                                          DropdownMenuItem(
                                            child: Text("Canada"),
                                            value: "3",
                                          ),
                                        ],
                                        onChanged: (v) {}),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    CustomButton(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/otp');
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Already Have An Account? ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[600],
                                                fontSize: 16.sp),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: GestureDetector(
                                            onTap: () => Navigator.pushNamed(
                                                context, '/loginpage'),
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                text: 'Login',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue,
                                                    fontSize: 16.sp),
                                              )
                                            ])),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        )),
      ),
    );
  }
}
