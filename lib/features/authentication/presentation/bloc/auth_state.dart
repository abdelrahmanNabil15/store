part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {

  const factory AuthState.loading() = _Loading;
  const factory AuthState.success(String token) = _Success;
  const factory AuthState.failure({required String message}) = _Failure;
}

