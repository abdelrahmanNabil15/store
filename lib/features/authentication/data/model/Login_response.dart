import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store/features/authentication/domain/entities/login.dart';
part 'Login_response.freezed.dart';
part 'Login_response.g.dart';
@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({  String?  token})= _LoginResponse;
  const LoginResponse._();

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Login toEntity() => Login(token: token!);
}