part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success(String? data) = _Success;
  const factory AuthState.failure( {required String message}) = _Failure;
  const factory AuthState.empty() = _Empty;
}
