import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class AuthStates<T> with _$AuthStates<T> {
  const factory AuthStates.initial() = _Initial;
  
  const factory AuthStates.loading() = Loading;
  const factory AuthStates.success(T data) = Success<T>;
  const factory AuthStates.error({required String error}) = Error;
}