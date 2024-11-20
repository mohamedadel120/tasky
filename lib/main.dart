import 'package:flutter/material.dart';
import 'package:tasky/core/routing/app_routes.dart';
import 'package:tasky/tasky_app.dart';

void main() {
  runApp(
    TaskyApp(
      appRouters: AppRouter(),
    ),
  );
}
