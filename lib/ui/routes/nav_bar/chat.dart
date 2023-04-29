import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peer_vendors/ui/const/colors.dart';

import '../../widgets/button.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 233, 233),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(top: 120.0, left: 30.0, right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All Users',
              style: TextStyle(
                  fontSize: 30.sp,
                  color: AppColor.deep_grey,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Container(
                  height: 55.h,
                  width: 250.w,
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      suffixIconColor: Colors.black,
                      hoverColor: Colors.black,
                      fillColor: Colors.grey,
                      filled: true,
                      hintText: 'Search Your Product',
                      hintStyle: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.h,
                ),
                Container(
                  height: 60.h,
                  width: 60.w,
                  child: Card(
                      color: Colors.blue,
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                        ),
                        color: Colors.white,
                        iconSize: 30.0,
                        hoverColor: Colors.grey,
                        onPressed: () {},
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: Image.asset('assets/images/girl3.png'),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bozenka Malina',
                            style: TextStyle(
                                color: AppColor.deep_grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp),
                          ),
                          Text(
                            'Uploaded File',
                            style: TextStyle(
                                color: AppColor.deep_grey, fontSize: 13.sp),
                          ),
                        ],
                      )
                    ],
                  ),
                  Positioned(
                      top: -10,
                      left: -20,
                      child: CircleAvatar(
                        backgroundColor: AppColor.deep_grey,
                        child: Text(
                          '5+',
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            //2nd chat
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Image.asset('assets/images/girl1.png'),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lola Linda',
                        style: TextStyle(
                            color: AppColor.deep_grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp),
                      ),
                      Text(
                        'Will do, Super. Thank You.',
                        style: TextStyle(
                            color: AppColor.deep_grey, fontSize: 13.sp),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            //3rd chat
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: Image.asset('assets/images/girl2.jpeg'),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kriyia Aquraisi',
                            style: TextStyle(
                                color: AppColor.deep_grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp),
                          ),
                          Text(
                            'How much?',
                            style: TextStyle(
                                color: AppColor.deep_grey, fontSize: 13.sp),
                          ),
                        ],
                      )
                    ],
                  ),
                  Positioned(
                      top: -10,
                      left: -20,
                      child: CircleAvatar(
                        backgroundColor: AppColor.deep_grey,
                        child: Text(
                          '3+',
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
