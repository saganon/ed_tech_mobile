import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ed_tech_mobile/constant/icons_constant.dart';
import 'package:ed_tech_mobile/screen/home/course_screen.dart';
import 'package:ed_tech_mobile/screen/home/profile_screen.dart';
import 'package:ed_tech_mobile/screen/home/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedTabBottom = 0;

  static final _bottomNavigationTab = [
    {
      'id': 0,
      'assetActive': IconsConstant.courseActive,
      'assetInactive': IconsConstant.courseInactive,
      'title': 'Courses',
    },
    {
      'id': 1,
      'assetActive': IconsConstant.profileActive,
      'assetInactive': IconsConstant.profileInactive,
      'title': 'Profile',
    },
    {
      'id': 2,
      'assetActive': IconsConstant.settingsActive,
      'assetInactive': IconsConstant.settingsInActive,
      'title': 'Settings',
    }
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedTabBottom = index;
    });
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          CourseScreen(),
          ProfileScreen(),
          SettingsScreen(),
        ].elementAt(index);
      },
    };
  }

  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  void builder(BuildContext context) {}

  Widget _buildOffstageNavigator(int index) {
    final routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedTabBottom != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name](context),
          );
        },
      ),
    );
  }

  Widget renderBottomNavigationItem(Map item) {
    return Container(
      width: 75,
      child: InkWell(
        onTap: () => _onItemTapped(item['id']),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              _selectedTabBottom == item['id']
                  ? item['assetActive']
                  : item['assetInactive'],
              width: 28.w,
              height: 36.h,
            ),
            Text(
              item['title'],
              style: TextStyle(
                color: _selectedTabBottom != item['id']
                    ? Color.fromRGBO(190, 186, 179, 1)
                    : Color.fromRGBO(227, 86, 42, 1),
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget renderBottomNavigator() {
    return Container(
      height: 96.h,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        border: Border.all(
          color: Color.fromRGBO(190, 186, 179, 1),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            renderBottomNavigationItem(_bottomNavigationTab[0]),
            renderBottomNavigationItem(_bottomNavigationTab[1]),
            renderBottomNavigationItem(_bottomNavigationTab[2]),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(255, 255, 255, 1),
      child: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          body: Stack(
            children: [
              _buildOffstageNavigator(0),
              _buildOffstageNavigator(1),
              _buildOffstageNavigator(2),
            ],
          ),
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: renderBottomNavigator(),
        ),
      ),
    );
  }
}
