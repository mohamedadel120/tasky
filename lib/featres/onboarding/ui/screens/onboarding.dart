import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/helpers/spacing.dart';
import 'package:tasky/core/theming/styles.dart';
import 'package:tasky/core/widget/app_text_button.dart';
import 'package:tasky/featres/onboarding/ui/widgets/images_and_bold_text.dart';
import 'package:tasky/featres/onboarding/ui/widgets/text_and_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ImageAndBoldText(),
              verticalSpace(10),
              const TextAndButton(),
            ],
          ),
        ),
      ),
    );
  }
}
