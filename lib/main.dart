import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peer_vendors/ui/routes/language_select.dart';
import 'package:peer_vendors/ui/routes/login_signup.dart';
import 'package:peer_vendors/ui/routes/register.dart';

import 'ui/routes/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/splash': (_) => Splash(),
            '/onboarding': (_) => Onboarding(),
            '/radiobutton': (_) => RadiButtonScreen(),
            '/register': (_) => Register(),
            '/login': (_) => LoginSignUp(),

            // '/dashboard': (_) => DashBoard(),
            // '/bottomNavBar': (_) => BottomNavController(),
          },
          initialRoute: '/splash',
        );
      },
    );
  }
}

//error ta kon screen e dekhasse..login koren
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, CupertinoPageRoute(builder: (_) => Onboarding())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logos/logo.png',
              height: 100.h,
              width: 100.w,
            ),
          ],
        ),
      ),
    );
  }
}
