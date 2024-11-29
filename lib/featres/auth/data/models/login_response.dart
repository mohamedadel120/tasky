import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse {
  @JsonKey(name: '_id')
  String? sId;
  @JsonKey(name: 'access_token')
  String? accessToken;
  @JsonKey(name: 'refresh_token')
  String? refreshToken;

  LoginResponse({this.sId, this.accessToken, this.refreshToken});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
