
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tasky/core/networking/api_constants.dart';
import 'package:tasky/featres/auth/data/api/auth_constants.dart';
import 'package:tasky/featres/auth/data/models/login_request_body.dart';
import 'package:tasky/featres/auth/data/models/login_response.dart';

part'auth_api_services.g.dart';
@RestApi(baseUrl: ApiConstants.baseUrl) 
abstract class AuthApiServices {
  factory AuthApiServices(Dio dio, {String baseUrl}) = _AuthApiServices;
  // Login
  @POST(AuthConstants.loginEP)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
} 