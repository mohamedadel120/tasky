import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/theming/colors.dart';
import 'package:tasky/core/theming/styles.dart';

class TaskTypeItemBuilder extends StatelessWidget {
  final int index;
  const TaskTypeItemBuilder({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 40.h,
        width: index == 0 ? 45.w : 85.w,
        decoration: BoxDecoration(
          color: index == 0
              ? ColorsManager.mainColor
              : ColorsManager.lightMainColor,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Center(
          child: Text(index == 0 ? 'All' : 'Task',
              style: index == 0
                  ? TextStyles.font16GrayRegular
                      .copyWith(color: ColorsManager.white)
                  : TextStyles.font16GrayRegular),
        ),
      ),
    );
  }
}
