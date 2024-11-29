import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/core/helpers/spacing.dart';
import 'package:tasky/core/theming/styles.dart';
import 'package:tasky/core/widget/app_text_button.dart';

import 'package:tasky/featres/auth/ui/widgets/button_and_sign_up.dart';
import 'package:tasky/featres/auth/ui/widgets/image_with_login_text.dart';
import 'package:tasky/featres/auth/ui/widgets/phone_and_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ImageWithLoginText(),
              verticalSpace(10),
              const PhoneAndPassword(),
              verticalSpace(5),
              AppTextButton(
                onPressed: () {
                  validateThenDoLogin(context);
                },
                buttonText: 'Sign In',
                textStyle: TextStyles.font16WhiteBold,
                borderRadius: 10,
                buttonWidth: 300.w,
              ),
              verticalSpace(10),
              const DontHaveAccount(),
              verticalSpace(20.h),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (formKey.currentState!.validate()) {}
  }
}
