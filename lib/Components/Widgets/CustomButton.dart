import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mon/Components/Styles/Colors.dart';
import 'package:meal_mon/Components/Styles/TextStyles.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      required this.background,
      required this.text,
      this.borderColor,
      this.textstyle,
      required this.onpressed})
      : super(key: key);
  final Color background;
  TextStyle? textstyle;
  final String text;
  Color? borderColor;
  final Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: background,
            side: BorderSide(color: borderColor ?? mainColor, width: 1.w),
            fixedSize: Size(307.w, 56.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.r))),
        onPressed: onpressed,
        child: Text(
          text,
          style: textstyle ?? btnTextStyle,
        ));
  }
}
