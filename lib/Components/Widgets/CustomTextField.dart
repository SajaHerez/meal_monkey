import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mon/Components/Styles/Colors.dart';
import 'package:meal_mon/Components/Styles/TextStyles.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      required this.hitText,
      this.controller,
      this.validator,
      this.obscureText,
      this.keyboardType,
      this.onSaved})
      : super(key: key);
  String? Function(String?)? validator;
  bool? obscureText;
  String hitText;
  TextInputType? keyboardType;
  TextEditingController? controller;
  Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      validator: validator,
      controller: controller,
      onSaved: onSaved,
      decoration: InputDecoration(
          filled: true,
          fillColor: placeholderColor.withOpacity(.25),
          hintText: hitText,
          hintStyle: subTitleStyle,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30.r)),
          contentPadding: EdgeInsets.only(top: 20.h, left: 34.w, bottom: 20.h)),
    );
  }
}
