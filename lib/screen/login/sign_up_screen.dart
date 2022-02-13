import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ed_tech_mobile/constant/image_constant.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  final _nameController = new TextEditingController();
  final _emailController = new TextEditingController();
  final _passwordController = new TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16.h, left: 16.w),
              child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Image.asset(
                  ImageConstant.backButton,
                  width: 48.w,
                  height: 48.h,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageConstant.signup,
                  width: 343.w,
                  height: 253.h,
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.h),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: Color.fromRGBO(60, 58, 54, 1),
                      fontFamily: 'Rubik-Medium',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8.h),
                  child: Text(
                    'Create your account',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Rubik-Regular',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.h, right: 16.w, left: 16.w),
                  child: Column(
                    children: [
                      Container(
                        height: 53.h,
                        child: TextFormField(
                          controller: _nameController,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(190, 186, 179, 1),
                                style: BorderStyle.none,
                              ),
                            ),
                            labelText: 'Name',
                            labelStyle: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Rubik-Regular',
                              color: Color.fromRGBO(190, 186, 179, 1),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 53.h,
                        margin: EdgeInsets.only(top: 16.h),
                        child: TextFormField(
                          controller: _emailController,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(190, 186, 179, 1),
                                style: BorderStyle.none,
                              ),
                            ),
                            labelText: 'E-mail',
                            labelStyle: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Rubik-Regular',
                              color: Color.fromRGBO(190, 186, 179, 1),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 53.h,
                        margin: EdgeInsets.only(top: 16.h),
                        child: TextFormField(
                          controller: _passwordController,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(190, 186, 179, 1),
                                style: BorderStyle.none,
                              ),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Rubik-Regular',
                              color: Color.fromRGBO(190, 186, 179, 1),
                            ),
                            suffixIcon: Container(
                              child: Image.asset(ImageConstant.hidePassword),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 16.0.w,
                    right: 16.0.w,
                    top: 16.0.h,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 56.0.h,
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(227, 86, 42, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 16.0.sp,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    margin: EdgeInsets.only(top: 16.h),
                    child: Text(
                      'Log in',
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
          ],
        ),
      ),
    );
  }
}
