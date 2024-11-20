import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/helpers/spacing.dart';
import 'package:tasky/core/theming/styles.dart';
import 'package:tasky/core/widget/app_text_button.dart';

class TextAndButton extends StatelessWidget {
  const TextAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'This productive tool is designed to help\n you better manage your task\n project-wise conveniently!',
          textAlign: TextAlign.center,
          style: TextStyles.font14GrayRegular,
        ),
        verticalSpace(30),
        AppTextButton(
          borderRadius: 12.0.r,
          buttonWidth: 331.w,
          buttonText: 'Let’s Start',
          onPressed: () {},
          icon: Icons.arrow_forward_rounded,
          textStyle: TextStyles.font19WhiteBold,
        ),
      ],
    );
  }
}
