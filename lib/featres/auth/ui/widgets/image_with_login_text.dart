import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/helpers/spacing.dart';
import 'package:tasky/core/theming/styles.dart';

class ImageWithLoginText extends StatelessWidget {
  const ImageWithLoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/onBoarding.png',
          height: 482.h,
          fit: BoxFit.cover,
          width: 375.w,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Text(
            'Login',
            style: TextStyles.font24BlackBold,
          ),
        ),
      ],
    );
  }
}
