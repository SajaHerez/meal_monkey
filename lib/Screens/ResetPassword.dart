import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mon/Components/Widgets/CustomTextField.dart';
import 'package:meal_mon/Utils/validation.dart';


import '../Components/Widgets/CustomButton.dart';
import '../Components/Styles/Colors.dart';
import '../Components/Styles/TextStyles.dart';
import '../Data/routesName.dart';
import '../Utils/hlperRouting.dart';


class ResetPass extends StatefulWidget {
  const ResetPass({Key? key}) : super(key: key);

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailController.dispose();
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
                    "Reset Password",
                    style: titleStyle,
                  ),
                  SizedBox(height: 13.h),
                  Text(
                    "Please enter your email to receive a",
                    style: subTitleStyle,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "link to  create a new password via email",
                    style: subTitleStyle,
                  ),
                  SizedBox(height: 60.h),
                  CustomTextField(
                    controller: _emailController,
                    validator: emailValidation,
                    hitText: "Email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 35.h),
                  CustomButton(
                    text: "Send",
                    textstyle: btnTextStyle,
                    onpressed: () {
                      RoutingUtil.push(Routes.oTPScreen);
                    },
                    background: mainColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
