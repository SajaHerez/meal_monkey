import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mon/Components/Widgets/CustomTextField.dart';
import 'package:meal_mon/Utils/validation.dart';

import '../Components/Widgets/CustomButton.dart';
import '../Components/Styles/Colors.dart';
import '../Components/Styles/TextStyles.dart';
import '../Data/routesName.dart';

class NewPassScreen extends StatefulWidget {
  const NewPassScreen({Key? key}) : super(key: key);

  @override
  State<NewPassScreen> createState() => _NewPassScreenState();
}

class _NewPassScreenState extends State<NewPassScreen> {
  final _conPassController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
                    "New Password",
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
                  SizedBox(height: 40.h),
                  CustomTextField(
                    controller: _passwordController,
                    validator: passwordValidation,
                    hitText: "New Password",
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  SizedBox(height: 28.h),
                  CustomTextField(
                    controller: _conPassController,
                    validator: (conPass) {
                      return confirmPassword(_passwordController.text, conPass);
                    },
                    hitText: "Confirm Password",
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  SizedBox(height: 30.h),
                  CustomButton(
                    text: "Next",
                    textstyle: btnTextStyle,
                    onpressed: () {},
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
