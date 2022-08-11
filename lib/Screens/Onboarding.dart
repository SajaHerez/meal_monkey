import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_mon/Utils/hlperRouting.dart';

import '../Components/Styles/Colors.dart';
import '../Components/Styles/TextStyles.dart';
import '../Components/Widgets/CustomButton.dart';
import '../Components/Widgets/CustomIndicator.dart';
import '../Data/lists.dart';
import '../Data/routesName.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _index = 0;
  final PageController _controller = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
  }

  final _imagelist = [
    SvgPicture.asset(
      list[0][0],
    ),
    SvgPicture.asset(
      list[1][0],
    ),
    SvgPicture.asset(
      list[2][0],
    ),
  ];
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 100.h),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 300.w,
                    height: 300.h,
                    child: PageView(
                      pageSnapping: false,
                      controller: _controller,
                      children: _imagelist,
                      onPageChanged: (value) {
                        setState(() {
                          _index = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Indicator(
                    index: _index,
                  ),
                  SizedBox(
                    height: 38.h,
                  ),
                  Text(
                    list[_index][1],
                    style: titleStyle,
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  Text(
                    list[_index][2],
                    style: subTitleStyle2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  CustomButton(
                    text: "Next",
                    textstyle: btnTextStyle,
                    onpressed: () {
                      if (_index == _imagelist.length - 1) {
                        pushReplacement(context, Routes.mainScreen);
                      }

                      _controller.nextPage(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.ease);
                    },
                    background: mainColor,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
