import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ed_tech_mobile/constant/icons_constant.dart';
import 'package:ed_tech_mobile/constant/image_constant.dart';
import 'package:ed_tech_mobile/screen/home/home_screen.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SettingsScreen();
}

class _SettingsScreen extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context, rootNavigator: true)
                          .pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      ),
                      child: Image.asset(IconsConstant.backButton),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Settings',
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
                  margin: EdgeInsets.only(top: 24.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImageConstant.settingsProfile,
                        width: 343.w,
                        height: 190.h,
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
                        child: Container(
                          margin: EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    IconsConstant.notification,
                                    width: 32.w,
                                    height: 32.h,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 12),
                                    child: Text(
                                      'Notifications',
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: 'Rubik-Medium',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                IconsConstant.notificationToggle,
                                width: 40.w,
                                height: 40.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.h),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Account information',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: 'Rubik-Medium',
                            fontWeight: FontWeight.w500,
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
                        child: Container(
                          margin: EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    IconsConstant.profileName,
                                    width: 32.w,
                                    height: 32.h,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 12),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Name',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontFamily: 'Rubik-Medium',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'Nanami Kento',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontFamily: 'Rubik-Medium',
                                            color: Color.fromRGBO(
                                                120, 116, 109, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                IconsConstant.next,
                                width: 24.w,
                                height: 24.h,
                              ),
                            ],
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
                        child: Container(
                          margin: EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    IconsConstant.email,
                                    width: 32.w,
                                    height: 32.h,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 12),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Email',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontFamily: 'Rubik-Medium',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'nanamikento@gmail.com',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontFamily: 'Rubik-Medium',
                                            color: Color.fromRGBO(
                                                120, 116, 109, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                IconsConstant.next,
                                width: 24.w,
                                height: 24.h,
                              ),
                            ],
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
                        child: Container(
                          margin: EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    IconsConstant.password,
                                    width: 32.w,
                                    height: 32.h,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 12),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Password',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontFamily: 'Rubik-Medium',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'changed 2 weeks ago',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontFamily: 'Rubik-Medium',
                                            color: Color.fromRGBO(
                                                120, 116, 109, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                IconsConstant.next,
                                width: 24.w,
                                height: 24.h,
                              ),
                            ],
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
      ),
    );
  }
}
