import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/helpers/constant.dart';
import 'package:tasky/core/routing/app_routes.dart';
import 'package:tasky/core/routing/routes.dart';
import 'package:tasky/core/theming/colors.dart';

class TaskyApp extends StatelessWidget {
  final AppRouter appRouters;
  const TaskyApp({super.key, required this.appRouters});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375, 812),
      child: MaterialApp(
        title: 'Tasky',
        theme: ThemeData(
          primaryColor: ColorsManager.mainColor,
          scaffoldBackgroundColor: ColorsManager.backgroundColor,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouters.generateRoute,
        initialRoute: isLoggedInUser ? Routes.home : Routes.onBoardingScreen,

        // Routes.onBoardingScreen,
      ),
    );
  }
}
