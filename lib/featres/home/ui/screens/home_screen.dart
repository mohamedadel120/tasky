import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/helpers/spacing.dart';
import 'package:tasky/featres/home/ui/widgets/task_type_list_view.dart';
import 'package:tasky/featres/home/ui/widgets/tasks_list_view.dart';
import 'package:tasky/featres/home/ui/widgets/top_home_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.h),
          child: Column(
            children: [
              const TopHomeBar(),
              verticalSpace(20),
              const TaskTypeListView(),
              verticalSpace(5),
              const TasksListView(),
            ],
          ),
        ),
      ),
    );
  }
}
