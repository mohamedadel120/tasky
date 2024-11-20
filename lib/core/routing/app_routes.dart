import 'package:flutter/material.dart';
import 'package:tasky/core/routing/routes.dart';
import 'package:tasky/featres/onboarding/ui/onboarding.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
