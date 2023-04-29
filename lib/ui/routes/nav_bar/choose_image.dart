import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peer_vendors/ui/const/colors.dart';
import 'package:peer_vendors/ui/widgets/text_field.dart';

import '../../widgets/button.dart';

class ChooseImage extends StatelessWidget {
  ChooseImage({super.key});
  int current_index = 0;
  List products = [
    Image.asset('assets/images/image 15.png'),
    Image.asset('assets/images/image 15.png'),
    Image.asset('assets/images/image 15.png'),
    Image.asset('assets/images/image 15.png'),
    Image.asset('assets/images/image 15.png'),
    Image.asset('assets/images/image 15.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Choose Images",
            style: TextStyle(color: AppColor.deep_grey),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add 1 or more images",
                style: TextStyle(
                    color: AppColor.deep_grey,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                  'For  best result, provide a  square  picture. Do not reduce  the width of  the  picture  in the  cropping  tools and  do not increase the height of the picture in the cropping tool. Need Help?'),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 80.h,
                width: 80.w,
                alignment: Alignment.bottomLeft,
                child: Card(
                    color: Colors.white,
                    child: IconButton(
                      icon: Icon(
                        Icons.add_circle_outline,
                      ),
                      color: AppColor.light_pink,
                      iconSize: 40.0,
                      hoverColor: Colors.grey,
                      onPressed: () {},
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 250,
                child: Container(
                  color: Colors.transparent,
                  child: GridView.builder(
                      itemCount: products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemBuilder: (_, index) {
                        return Container(
                          child: products[current_index],
                        );
                      }),
                ),
              ),
              SizedBox(
                height: 30.h,
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
            ],
          ),
        ),
      ),
    );
  }
}
