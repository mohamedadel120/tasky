import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/theming/styles.dart';

class ImageAndBoldText extends StatelessWidget {
  const ImageAndBoldText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/onBoarding.png',
          height: 482.h,
          fit: BoxFit.cover,
          width: 375.w,
        ),
        Text(
          textAlign: TextAlign.center,
          'Task Management &\nTo-Do List',
          style: TextStyles.font24BlackBold,
        ),
      ],
    );
  }
}
