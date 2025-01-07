import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/di/dependacy_injection.dart';
import 'package:tasky/core/helpers/constant.dart';
import 'package:tasky/core/helpers/extensions.dart';
import 'package:tasky/core/helpers/shared_pref.dart';
import 'package:tasky/core/routing/app_routes.dart';
import 'package:tasky/tasky_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefHelper.getInt("start");
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(
    TaskyApp(
      appRouters: AppRouter(),
    ),
  );
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
