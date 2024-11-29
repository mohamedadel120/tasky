/* import 'package:flutter/material.dart';
import 'package:sa7e7_app/features/auth/data/models/login_request_body.dart';
import 'package:sa7e7_app/features/auth/data/repository/login_repo.dart';
import 'package:sa7e7_app/features/auth/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void login() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) {
        emit(
          LoginState.success(loginResponse),
        );
      },
      failure: (error) {
        emit(
          LoginState.error(error: error.message ?? ''),
        );
      },
    );
  }
}
 */