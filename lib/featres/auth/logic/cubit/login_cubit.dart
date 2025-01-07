import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasky/core/helpers/constant.dart';
import 'package:tasky/core/helpers/shared_pref.dart';
import 'package:tasky/core/networking/dio_factory.dart';
import 'package:tasky/core/routing/routes.dart';
import 'package:tasky/featres/auth/data/models/login_request_body.dart';
import 'package:tasky/featres/auth/data/repository/auth_repo.dart';
import 'package:tasky/featres/auth/logic/cubit/login_state.dart';

class AuthCubit extends Cubit<AuthStates> {
  final AuthRepo _authRepo;
  AuthCubit(this._authRepo) : super(const AuthStates.initial());
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void login() async {
    emit(const AuthStates.loading());
    final response = await _authRepo.login(
      LoginRequestBody(
        phone: "+2${phoneController.text}",
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        //*this function is save user token after loggedIn successfully
        await saveUserToken(loginResponse.accessToken ?? '');

        emit(AuthStates.success(loginResponse));
        if (SharedPrefKeys.userToken.isEmpty) {
          log('Token is empty');
        }
      },
      failure: (error) {
        emit(
          AuthStates.error(error: error.message ?? ''),
        );
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
