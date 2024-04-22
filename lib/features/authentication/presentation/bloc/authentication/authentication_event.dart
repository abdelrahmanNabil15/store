part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authenticationStatusChanged({String ? token}) = _AuthenticationStatusChanged;
  const factory AuthenticationEvent.authenticationLogoutRequested () = AuthenticationLogoutRequested ;
}
