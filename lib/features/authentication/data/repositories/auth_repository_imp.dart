import 'package:dartz/dartz.dart';
import 'package:store/core/network/failure.dart';
import 'package:store/features/authentication/data/data_sources/auth_remote_data_source.dart';
import 'package:store/features/authentication/domain/entities/login.dart';
import 'package:store/features/authentication/domain/repositories/auth_repository.dart';
import 'package:store/features/authentication/domain/usecase/login_usecase.dart';


class AuthenticationRepositoryImp implements Authentication {
  final AuthenticationRemoteDataSource authenticationRemoteDataSource;

  AuthenticationRepositoryImp(this.authenticationRemoteDataSource);

  @override
  Future<Either<Failure, Login>> loginRepo(LoginParams loginParams) async {
    final response = await authenticationRemoteDataSource.login(loginParams);
    return response.fold((failure) => Left(failure), (loginResponse)   {
      return Right(loginResponse.toEntity());
    },);
  }
}