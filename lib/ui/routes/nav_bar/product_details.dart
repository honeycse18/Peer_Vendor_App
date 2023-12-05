import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peer_vendors/ui/const/colors.dart';
import 'package:peer_vendors/ui/widgets/text_field.dart';

import '../../widgets/button.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key});
  final _productNameController = TextEditingController();
  final _productDescriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _locationController = TextEditingController();
  var valueChoose = "-1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Product Details",
            style: TextStyle(color: AppColor.deep_grey),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Text(
                  "Complete all the fields with valid information",
                  style: TextStyle(
                      color: AppColor.deep_grey,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: text_field(_productNameController, "Product Title"),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 200.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: text_field(
                        _productDescriptionController, "Product Description"),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: text_field(_priceController, "Price"),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: DropdownButtonFormField(
                        value: valueChoose,
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              "Where You Advertise This Item",
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
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: text_field(_locationController, "Location"),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/chooseImage');
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
      ),
    );
  }
}
