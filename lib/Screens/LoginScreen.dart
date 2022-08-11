import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mon/Components/Widgets/CustomButton.dart';
import 'package:meal_mon/Components/Styles/Colors.dart';
import 'package:meal_mon/Utils/validation.dart';
import '../Components/Styles/TextStyles.dart';
import '../Components/Widgets/CustomIconButton.dart';
import '../Components/Widgets/CustomTextField.dart';
import '../Data/routesName.dart';
import '../Utils/hlperRouting.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 30.w, right: 30.w),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(children: [
                SizedBox(height: 60.h),
                Text(
                  "Login",
                  style: titleStyle,
                ),
                SizedBox(height: 13.h),
                Text(
                  "Add your details to login",
                  style: subTitleStyle,
                ),
                SizedBox(height: 36.h),
                Form(
                    child: Column(
                  children: [
                    CustomTextField(
                      hitText: "Your Email",
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: emailValidation,
                    ),
                    SizedBox(height: 28.h),
                    CustomTextField(
                      hitText: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      controller: _passwordController,
                      validator: passwordValidation,
                    )
                  ],
                )),
                SizedBox(height: 28.h),
                CustomButton(
                  text: "Login",
                  textstyle: btnTextStyle,
                  onpressed: () {},
                  background: mainColor,
                ),
                SizedBox(height: 24.h),
                GestureDetector(
                  child: Text(
                    "Forgot your password?",
                    style: subTitleStyle,
                  ),
                  onTap: () {
                    push(context, Routes.resetPasswordScreen);
                  },
                ),
                SizedBox(height: 50.h),
                Text(
                  "or Login With",
                  style: subTitleStyle,
                ),
                SizedBox(height: 27.h),
                CustomIconButton(
                  path: "assets/images/facebook-letter-logo.svg",
                  onpressed: () {},
                  background: blue,
                  borderColor: blue,
                  text: "Login with Facebook",
                ),
                SizedBox(height: 28.h),
                CustomIconButton(
                  path: "assets/images/google-plus-logo.svg",
                  onpressed: () {},
                  background: red,
                  borderColor: red,
                  text: "Login with Google",
                ),
                SizedBox(height: 80.h),
                Wrap(
                  children: [
                    Text(
                      "Don't have an Account?",
                      style: subTitleStyle,
                    ),
                    GestureDetector(
                        onTap: () {
                          push(context, Routes.signUpScreen);
                        },
                        child: Text(
                          "Sign Up",
                          style: hintStyle,
                        ))
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
