import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:peer_vendors/ui/routes/nav_bar/account.dart';
import 'package:peer_vendors/ui/routes/nav_bar/chat.dart';
import 'package:peer_vendors/ui/routes/nav_bar/my_ads.dart';

import '../../const/colors.dart';
import 'add.dart';
import 'home.dart';

class Bottom_Nav_Controller extends StatefulWidget {
  const Bottom_Nav_Controller({super.key});

  @override
  State<Bottom_Nav_Controller> createState() => _Bottom_Nav_ControllerState();
}

class _Bottom_Nav_ControllerState extends State<Bottom_Nav_Controller> {
  int _currentIndex = 0;
  final _pages = [
    HomePage(),
    MyAds(),
    Add(),
    Chat(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: AppColor.purple,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: 'My Adds'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wechat_outlined), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account')
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
