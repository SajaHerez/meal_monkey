import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mon/Components/Widgets/CustomButton.dart';
import 'package:meal_mon/models/User.dart';
import '../Components/Styles/Colors.dart';
import '../Components/Styles/TextStyles.dart';
import '../Components/Widgets/CustomTextField.dart';
import '../Data/routesName.dart';
import '../Utils/hlperRouting.dart';
import '../Utils/validation.dart';
import 'Onboarding.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _addressController = TextEditingController();
  final _emailController = TextEditingController();
  final _conPassController = TextEditingController();
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
                  "Sign Up",
                  style: titleStyle,
                ),
                SizedBox(height: 12.h),
                Text(
                  "Add your details to sign up",
                  style: subTitleStyle,
                ),
                SizedBox(height: 36.h),
                CustomTextField(
                    controller: _nameController,
                    hitText: "Name",
                    keyboardType: TextInputType.text,
                    validator: nameValidation),
                SizedBox(height: 28.h),
                CustomTextField(
                  controller: _emailController,
                  validator: emailValidation,
                  hitText: "Email",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 28.h),
                CustomTextField(
                  controller: _mobileController,
                  validator: mobileNoValidation,
                  hitText: "Mobile No",
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 28.h),
                CustomTextField(
                  controller: _addressController,
                  validator: addressValidation,
                  hitText: "Address",
                  keyboardType: TextInputType.streetAddress,
                ),
                SizedBox(height: 28.h),
                CustomTextField(
                  controller: _passwordController,
                  validator: passwordValidation,
                  hitText: "Password",
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                SizedBox(height: 28.h),
                CustomTextField(
                  hitText: "Confirm Password",
                  controller: _conPassController,
                  validator: (conPass) {
                    return confirmPassword(_passwordController.text, conPass);
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                SizedBox(height: 28.h),
                CustomButton(
                  text: "Sign Up",
                  textstyle: btnTextStyle,
                  onpressed: _signUp,
                  background: mainColor,
                ),
                SizedBox(height: 24.h),
                Wrap(
                  children: [
                    Text(
                      "Already have an Account?",
                      style: subTitleStyle,
                    ),
                    GestureDetector(
                        onTap: () {
                          RoutingUtil.push(Routes.loginScreen);
                        },
                        child: Text(
                          " Login",
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

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _mobileController.dispose();
    _passwordController.dispose();
    _addressController.dispose();
    _conPassController.dispose();
    super.dispose();
  }

  void _signUp() {
    if (validate(_formKey)) {
      setState(() {
        String name = _nameController.text;
        String password = _passwordController.text;
        String email = _emailController.text;
        String mobileNo = _mobileController.text;
        String address = _addressController.text;
        final user = User(name, email, mobileNo, address, password);
      //   Navigator.pushReplacement(
      // context, MaterialPageRoute(builder: ((context) =>const OnBoarding()))
      // );
      });
    }
  }
}
