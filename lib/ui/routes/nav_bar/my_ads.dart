import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAds extends StatelessWidget {
  List products = [
    {
      'product_name': 'Apple Watch',
      'image': 'assets/images/image.png',
      'price': '\$ 88.45',
      'description': 'Series 6 Red'
    },
    {
      'product_name': 'Apple Watch',
      'image': 'assets/images/image.png',
      'price': '\$ 88.45',
      'description': 'Series 6 Red'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'My Ads',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.sp,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          bottom: TabBar(
            indicatorColor: Colors.grey,
            labelColor: Colors.black,
            indicatorWeight: 3,
            tabs: [
              Tab(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Icon(Icons.shopping_basket),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text('My Ads')
                    ],
                  ),
                ),
              ),
              Tab(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Icon(Icons.favorite_outline),
                      SizedBox(
                        width: 5,
                      ),
                      Text('My Favourite')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 25,
                  left: 25,
                  top: 50,
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: products.length,
                  itemBuilder: (_, index) {
                    return Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              //  vertical: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 100.h,
                                ),
                                Text(
                                  products[index]['product_name'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  products[index]['description'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  products[index]['price'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF5956E9),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: -30,
                            right: 30,
                            left: 30,
                            child: Center(
                              child: Image.asset(
                                products[index]['image'],
                                height: 150.h,
                                width: 150.w,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 25,
                  left: 25,
                  top: 20,
                ),
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (_, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                          products[index]['image'],
                        ),
                      ),
                      title: Text(
                        products[index]['product_name'],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        products[index]['description'],
                        style: TextStyle(),
                      ),
                      trailing: Text(
                        products[index]['price'],
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF5956E9),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
