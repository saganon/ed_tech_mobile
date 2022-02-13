import 'package:ed_tech_mobile/constant/image_constant.dart';
import 'package:ed_tech_mobile/screen/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const introContent = [
  {
    'asset': ImageConstant.illustration1,
    'title': 'Learn anytime and anywhere',
    'subTitle':
        'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
  },
  {
    'asset': ImageConstant.illustration2,
    'title': 'Find a course for you',
    'subTitle':
        'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
  },
  {
    'asset': ImageConstant.illustration3,
    'title': 'Improve your skills',
    'subTitle':
        'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
  }
];

class IntroScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IntroScreen();
}

class _IntroScreen extends State<IntroScreen> {
  bool _isLastScreen = false;

  @override
  void initState() {
    super.initState();
    _isLastScreen = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.only(bottom: 144.0),
              child: _renderSwiper(),
            ),
          ),
          _renderButton(),
        ],
      ),
    );
  }

  Widget _renderSwiper() => Container(
        child: Swiper(
          itemCount: introContent.length,
          onIndexChanged: (value) => setState(
            () {
              _isLastScreen = value == introContent.length - 1;
            },
          ),
          itemBuilder: (context, index) => _renderContent(introContent[index]),
          loop: false,
          controller: new SwiperController(),
          pagination: new SwiperPagination(
            builder: DotSwiperPaginationBuilder(
              size: 12.0,
              activeSize: 12.0,
              space: 5.0,
              activeColor: Color.fromRGBO(41, 87, 164, 1),
              color: Color.fromRGBO(201, 209, 221, 1),
            ),
          ),
        ),
      );

  Widget _renderContent(Map item) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(item['asset']),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 32, right: 32, top: 16),
              alignment: Alignment.center,
              child: Text(
                item['title'],
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromRGBO(60, 58, 54, 1),
                  fontFamily: 'Rubik-Medium',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 32, right: 32, top: 8),
              alignment: Alignment.center,
              child: Text(
                item['subTitle'],
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Rubik-Regular',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );

  SafeArea _renderButton() {
    return SafeArea(
      top: false,
      bottom: true,
      child: Container(
        margin: EdgeInsets.only(
          left: 32.0,
          right: 32.0,
          bottom: 16.0,
          top: 29.0,
        ),
        width: MediaQuery.of(context).size.width,
        height: 56.0,
        child: ElevatedButton(
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(227, 86, 42, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Text(
            _isLastScreen ? 'Let’s Start' : 'Next',
            style: TextStyle(
              fontFamily: 'Rubik',
              fontSize: 16.0,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
      ),
    );
  }
}
