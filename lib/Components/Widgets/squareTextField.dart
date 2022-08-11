import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mon/Components/Styles/Colors.dart';
import 'package:meal_mon/Components/Styles/TextStyles.dart';

class SquareTextField extends StatelessWidget {
  SquareTextField({Key? key, this.controller, this.validator, this.onSaved})
      : super(key: key);
  String? Function(String?)? validator;

  TextEditingController? controller;
  Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 60.h,
      decoration: BoxDecoration(
          color: placeholderColor.withOpacity(.25),
          borderRadius: BorderRadius.circular(15.r)),
      child: TextFormField(
          keyboardType: TextInputType.number,
          obscureText: false,
          validator: validator,
          controller: controller,
          onSaved: onSaved,
          decoration: InputDecoration(
              hintText: "*",
              hintStyle: starStyle,
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                top: 20.h,
                left: 23.w,
            ))),
    );
  }
}
