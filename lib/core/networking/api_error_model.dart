import 'package:json_annotation/json_annotation.dart';
import 'package:tasky/core/helpers/extensions.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  @JsonKey(name: 'data')
  final List<dynamic>? errors;

  ApiErrorModel({
    this.message,
    this.errors,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  static String getAllErrorMessages(ApiErrorModel apiErrorModel) {
    // تحقق مما إذا كانت هناك رسائل خطأ

    if (apiErrorModel.errors.isNullOrEmpty()) {
      return apiErrorModel.message ?? "Unknown error occurred";
    }

    // استخرج الرسائل من حقل 'data'
    final errorMessages = apiErrorModel.errors!
        .map<String>((message) => message.toString())
        .join('\n\n');
    return errorMessages;

    // في حالة عدم وجود أخطاء
  }
}
