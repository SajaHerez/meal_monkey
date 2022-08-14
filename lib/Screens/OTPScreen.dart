import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mon/Components/Widgets/CustomButton.dart';
import '../Components/Styles/Colors.dart';
import '../Components/Styles/TextStyles.dart';
import '../Components/Widgets/squareTextField.dart';
import '../Data/routesName.dart';
import '../Utils/hlperRouting.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _codeController1 = TextEditingController();
  final _codeController2 = TextEditingController();
  final _codeController3 = TextEditingController();
  final _codeController4 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _codeController1.dispose();
    _codeController2.dispose();
    _codeController3.dispose();
    _codeController4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 30.w, right: 30.w),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 60.h),
                  Text(
                    "We have sent an OTP to\nyour Mobile",
                    style: titleStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 13.h),
                  Text(
                    "Please check your mobile number 071*****12",
                    style: subTitleStyle,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "continue to reset your password",
                    style: subTitleStyle,
                  ),
                  SizedBox(height: 60.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SquareTextField(controller: _codeController1),
                      SquareTextField(
                        controller: _codeController2,
                      ),
                      SquareTextField(
                        controller: _codeController3,
                      ),
                      SquareTextField(
                        controller: _codeController4,
                      )
                    ],
                  ),
                  SizedBox(height: 36.h),
                  CustomButton(
                    text: "Next",
                    textstyle: btnTextStyle,
                    onpressed: () {
                      RoutingUtil.push(Routes.newPassScreen);
                    },
                    background: mainColor,
                  ),
                  SizedBox(height: 33.h),
                  Wrap(
                    children: [
                      Text(
                        "Didn't Receive?",
                        style: subTitleStyle,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Text(
                            " Click Here",
                            style: hintStyle,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
