import 'package:dartz/dartz.dart';
import 'package:store/core/network/failure.dart';
import 'package:store/core/usecase/base_usecase.dart';
import 'package:store/features/authentication/domain/entities/login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store/features/authentication/domain/repositories/auth_repository.dart';

part 'login_usecase.freezed.dart';

part 'login_usecase.g.dart';

class LoginUseCase extends UseCase<Login, LoginParams> {
  final Authentication _repo;
    LoginUseCase(this._repo);
  @override
  Future<Either<Failure, Login>> execute(LoginParams params) {
  return _repo.loginRepo(params );
  }
}

@freezed
class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String username,
    required String password,
  }) = _LoginParams;

  factory LoginParams.fromJson(Map<String, dynamic>json)=>
      _$LoginParamsFromJson(json);
}

