import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ed_tech_mobile/constant/icons_constant.dart';
import 'package:ed_tech_mobile/constant/image_constant.dart';
import 'package:ed_tech_mobile/screen/home/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  InkWell(
                    onTap: () =>
                        Navigator.of(context, rootNavigator: true).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    ),
                    child: Image.asset(IconsConstant.backButton),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: 'Rubik-Medium',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 32.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageConstant.profile,
                      width: 172.w,
                      height: 172.h,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80.h,
                      margin: EdgeInsets.only(top: 16.h),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        border: Border.all(
                          color: Color.fromRGBO(190, 186, 179, 1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Your Courses',
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontFamily: 'Rubik-Medium',
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80.h,
                      margin: EdgeInsets.only(top: 16.h),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        border: Border.all(
                          color: Color.fromRGBO(190, 186, 179, 1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Saved',
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontFamily: 'Rubik-Medium',
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80.h,
                      margin: EdgeInsets.only(top: 16.h),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        border: Border.all(
                          color: Color.fromRGBO(190, 186, 179, 1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Payment',
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontFamily: 'Rubik-Medium',
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => {},
                      child: Container(
                        margin: EdgeInsets.only(top: 16.h),
                        child: Text(
                          'Log out',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Rubik-Regular',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
