import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mon/Components/Styles/Colors.dart';

class Indicator extends StatelessWidget {
  const Indicator({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: Container(
            width: 10.h,
            height: 10.h,
            color: (index == 0) ? mainColor : placeholderColor.withOpacity(.4),
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        ClipOval(
          child: Container(
            width: 10.h,
            height: 10.h,
            color: (index == 1) ? mainColor : placeholderColor.withOpacity(.4),
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        ClipOval(
          child: Container(
            width: 10.h,
            height: 10.h,
            color: (index == 2) ? mainColor : placeholderColor.withOpacity(.4),
          ),
        )
      ],
    );
  }
}
