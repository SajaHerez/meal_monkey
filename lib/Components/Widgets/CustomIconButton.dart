import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_mon/Components/Styles/Colors.dart';
import 'package:meal_mon/Components/Styles/TextStyles.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      required this.background,
      required this.text,
      this.borderColor,
      required this.onpressed,
      required this.path})
      : super(key: key);
  final Color background;
  final String text;
  Color? borderColor;
  final Function()? onpressed;
  String path;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        icon: SvgPicture.asset(path),
        style: ElevatedButton.styleFrom(
            primary: background,
            side: BorderSide(color: borderColor ?? mainColor, width: 1.w),
            fixedSize: Size(307.w, 56.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.r))),
        onPressed: onpressed,
        label: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            text,
            style: btnsmallTextStyle,
          ),
        ));
  }
}
