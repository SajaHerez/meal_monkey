import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mon/Components/Styles/Colors.dart';
import '../Components/Widgets/CustomButton.dart';
import '../Components/Styles/TextStyles.dart';
import '../Data/routesName.dart';
import '../Utils/hlperRouting.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SvgPicture.asset("assets/images/Organetopshape.svg"),
              Image.asset(
                "assets/images/unknown2.png",
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              CustomButton(
                background: mainColor,
                borderColor: mainColor,
                text: 'Login',
                onpressed: () {
                  RoutingUtil.push(Routes.loginScreen);
                },
                textstyle: btnTextStyle,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                background: white,
                borderColor: mainColor,
                text: 'Create an Account',
                onpressed: () {
                  RoutingUtil.push(Routes.signUpScreen);
                },
                textstyle: btnTextStyleO,
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
