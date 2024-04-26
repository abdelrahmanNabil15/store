import 'package:bloc/bloc.dart';
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
    on<_LoginButtonPressed>((_LoginButtonPressed event, emit) async  {
         const AuthState.loading();
      final params = LoginParams(username: event.username!, password: event.password!);
      final data = await _loginUseCase.execute(params);
      data.fold((failure) {
        emit(AuthState.failure(message: failure.message));
      }, (r) =>  {


        emit(AuthState.success(r.token)),
        _appPref.setUserLogged(),
      });
    });
  }
}
