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
        // leading: Icon(
        //   Icons.location_on,
        //   color: AppColor.light_pink,
        // ),
        backgroundColor: Colors.grey,
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
      drawer: const NavigationDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
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
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 30.r,
        child: IconButton(
          icon: Icon(
            Icons.headphones_rounded,
          ),
          color: AppColor.light_pink,
          iconSize: 30.0,
          hoverColor: Colors.grey,
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Container(
                      height: 300.h,
                      width: 380.w,
                      padding: EdgeInsets.only(
                        top: 30,
                        left: 10,
                        right: 10,
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text(
                                  'Help & Support',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.light_pink),
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/logos/play-button.png'),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      'Fix My Location Problem',
                                      style: TextStyle(
                                        color: AppColor.light_pink,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/logos/play-button.png'),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      'How To Use This App',
                                      style: TextStyle(
                                        color: AppColor.light_pink,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person_2,
                                      color: AppColor.light_pink,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      'Contact Us for Location',
                                      style: TextStyle(
                                        color: AppColor.light_pink,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              top: -40,
                              right: -20,
                              child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.black,
                                      )))),
                        ],
                      ),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}

//Drawer Class$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildHeader(context),
          buildMenuItems(context),
        ],
      )),
    );
  }

  Widget buildHeader(BuildContext context) => Material(
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
              top: 24,
            ),
            child: Column(
              children: const [
                SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  radius: 52,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("assets/logos/logo.png"),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(26),
        child: Wrap(
          runSpacing: 0.5,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
              ),
              title: const Text('Account Metrics'),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            const Divider(
              height: 10,
              thickness: 1.0,
              color: Colors.grey,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
              ),
              title: const Text('Help & Support'),
              onTap: () {},
            ),
            const Divider(
              height: 10,
              thickness: 1.0,
              color: Colors.grey,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
              ),
              title: const Text('Contact Us'),
              onTap: () {},
            ),
            const Divider(
              height: 10,
              thickness: 1.0,
              color: Colors.grey,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
              ),
              title: const Text('Share App'),
              onTap: () {},
            ),
            const Divider(
              height: 10,
              thickness: 1.0,
              color: Colors.grey,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
              ),
              title: const Text('Rate Us'),
              onTap: () {},
            ),
            const Divider(
              height: 10,
              thickness: 1.0,
              color: Colors.grey,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
              ),
              title: const Text('FAQ'),
              onTap: () {},
            ),
            const Divider(
              height: 10,
              thickness: 1.0,
              color: Colors.grey,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
              ),
              title: const Text('Privecy Policy'),
              onTap: () {},
            ),
          ],
        ),
      );
}
