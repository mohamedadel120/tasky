import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasky/core/di/dependacy_injection.dart';
import 'package:tasky/core/routing/routes.dart';
import 'package:tasky/featres/auth/logic/cubit/login_cubit.dart';
import 'package:tasky/featres/auth/ui/screens/login_screen.dart';
import 'package:tasky/featres/home/ui/screens/home_screen.dart';
import 'package:tasky/featres/onboarding/ui/screens/onboarding.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => AuthCubit(sl()),
                child: const LoginScreen()));
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      default:
        return null;
    }
  }
}
