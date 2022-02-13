import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ed_tech_mobile/constant/icons_constant.dart';
import 'package:ed_tech_mobile/constant/image_constant.dart';

class CourseScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CourseScreen();
}

class _CourseScreen extends State<CourseScreen> {
  final _searchController = new TextEditingController();

  final _category = [
    {
      'title': '#CSS',
    },
    {
      'title': '#UX',
    },
    {
      'title': '#Swift',
    },
    {
      'title': '#UI',
    }
  ];

  final _courseTopic = [
    {
      'asset': ImageConstant.course1,
      'title': 'UI',
      'description': 'Advanced mobile interface design',
      'price': '50',
      'hour': '3h 30min',
      'backgroundColor': Color.fromRGBO(248, 242, 238, 1),
    },
    {
      'asset': ImageConstant.course2,
      'title': 'UI Advanced',
      'description': 'Advanced mobile interface design',
      'price': '50',
      'hour': '3h 30min',
      'backgroundColor': Color.fromRGBO(230, 237, 244, 1),
    }
  ];

  @override
  void dispose() {
    _searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Rubik-Medium',
                        ),
                      ),
                      Text(
                        'Nanami Kento',
                        style: TextStyle(
                          fontSize: 32.sp,
                          fontFamily: 'Rubik-Medium',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    IconsConstant.notificationButton,
                    width: 48.w,
                    height: 48.h,
                  ),
                ],
              ),
              Container(
                height: 56.h,
                margin: EdgeInsets.only(top: 12.h),
                padding: EdgeInsets.only(left: 10.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  border: Border.all(
                    color: Color.fromRGBO(190, 186, 179, 1),
                    style: BorderStyle.solid,
                  ),
                ),
                alignment: Alignment.centerLeft,
                child: TextFormField(
                  controller: _searchController,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search course',
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Rubik-Regular',
                      color: Color.fromRGBO(190, 186, 179, 1),
                    ),
                    suffixIcon: Container(
                      child: Image.asset(
                        IconsConstant.search,
                        width: 24.w,
                        height: 24.h,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 13.h),
                child: Row(
                  children: [
                    Text(
                      'Category:',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Rubik-Regular',
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: _category
                              .map((e) => _rendercategoryItem(e))
                              .toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 12.h),
                  child: ListView(
                    shrinkWrap: true,
                    children:
                        _courseTopic.map((e) => _renderCourseItem(e)).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _renderCourseItem(Map item) => Container(
      height: 297.h,
      margin: EdgeInsets.only(top: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        border: Border.all(
          color: Color.fromRGBO(190, 186, 179, 1),
          style: BorderStyle.solid,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 194.h,
            width: MediaQuery.of(context).size.width,
            color: item['backgroundColor'],
            child: ClipRRect(
              child: Image.asset(
                item['asset'],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 16.h,
              left: 16.w,
              right: 16.w,
            ),
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['hour'],
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'Rubik-Regular',
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(91, 160, 146, 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 4.h),
                  child: Text(
                    item['title'],
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: 'Rubik-Regular',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 4.h),
                  child: Text(
                    item['description'],
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Rubik-Regular',
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ));

  Container _rendercategoryItem(Map item) => Container(
        width: 54.w,
        height: 24.h,
        decoration: BoxDecoration(
          color: Color.fromRGBO(101, 170, 234, 1),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: Center(
          child: Text(
            item['title'],
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: 'Rubik-Regular',
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(242, 242, 242, 1),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
}
