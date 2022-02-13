import 'dart:async';

import 'package:ed_tech_mobile/constant/image_constant.dart';
import 'package:ed_tech_mobile/screen/on_boarding/intro_screen.dart';
import 'package:flutter/material.dart';

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
      child: Image.asset(ImageConstant.splashscreen),
    );
  }
}
