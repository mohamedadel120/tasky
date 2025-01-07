import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/theming/colors.dart';
import 'package:tasky/core/theming/styles.dart';
import 'package:tasky/featres/home/ui/widgets/task_type_item_builder.dart';

class TaskTypeListView extends StatelessWidget {
  const TaskTypeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) =>
            TaskTypeItemBuilder(index: index),
      ),
    );
  }
}
