import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store/core/app/app_prefs.dart';
import 'package:store/core/app/di.dart';
import 'package:store/core/network/failure.dart';
import 'package:store/features/authentication/domain/usecase/login_usecase.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';


class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;
  final AppPreferences _appPref = instance<AppPreferences>();

  AuthBloc(this._loginUseCase) : super(const AuthState.loading()) {
    @override
    Stream<AuthState> mapEventToState(AuthEvent event) async* {
      if (event is _LoginButtonPressed) {
        yield* _mapLoginButtonPressedToState(event);
      }
      // Add handling for other events here if needed
    }
  }

  Stream<AuthState> _mapLoginButtonPressedToState(
      _LoginButtonPressed event) async* {
    yield const AuthState.loading();
    final params = LoginParams(
        username: event.username!, password: event.password!);
    final data = await _loginUseCase.execute(params);
    data.fold((failure) {
      if (failure is Failure) {
        emit(AuthState.failure(message: failure.message));
      }
    }, (r) =>
    {
      _appPref.setUserLogged(),
      emit(AuthState.success(r.token))
    });
  }

}
