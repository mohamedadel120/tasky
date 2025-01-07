import 'package:tasky/core/networking/api_error_handler.dart';
import 'package:tasky/core/networking/api_result.dart';
import 'package:tasky/featres/auth/data/api/auth_api_services.dart';
import 'package:tasky/featres/auth/data/models/login_request_body.dart';
import 'package:tasky/featres/auth/data/models/login_response.dart';

class AuthRepo {
  final AuthApiServices _authApiServices;

  AuthRepo(this._authApiServices);

  //login
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _authApiServices.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
