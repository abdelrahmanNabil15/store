import 'package:dartz/dartz.dart';
import 'package:store/core/app/constants.dart';
import 'package:store/core/network/api_service.dart';
import 'package:store/core/network/failure.dart';
import 'package:store/features/authentication/data/model/Login_response.dart';
import 'package:store/features/authentication/domain/usecase/login_usecase.dart';

abstract class AuthenticationRemoteDataSource {
  Future<Either<Failure, LoginResponse>> login(LoginParams loginParams);
}

class AuthenticationRemoteDataSourceImp
    implements AuthenticationRemoteDataSource {
  final ApiService _apiService;

  AuthenticationRemoteDataSourceImp(this._apiService);

  @override
  Future<Either<Failure, LoginResponse>> login(LoginParams loginParams) async {
    final response = await _apiService.post(
        endPoint: Constants.loginUrl,
        data: loginParams,
        converter: (response) =>
            LoginResponse.fromJson(response as Map<String, dynamic>));
    return response;
  }
}
