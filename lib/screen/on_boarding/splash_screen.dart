import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ed_tech_mobile/constant/image_constant.dart';
import 'package:ed_tech_mobile/screen/on_boarding/intro_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => IntroScreen()),
      ),
    );

    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: Image.asset(
        ImageConstant.splashscreen,
        width: 375.w,
        height: 326.h,
      ),
    );
  }
}
