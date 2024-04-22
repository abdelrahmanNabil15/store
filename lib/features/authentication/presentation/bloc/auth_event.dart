part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginButtonPressed ({String? username, String? password}) = _LoginButtonPressed;
}
