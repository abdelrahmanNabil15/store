part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unknown() = _unknown;
  const factory AuthenticationState.authenticated() = _authenticated;
  const factory AuthenticationState.unauthenticated( ) = _unauthenticated;

}
