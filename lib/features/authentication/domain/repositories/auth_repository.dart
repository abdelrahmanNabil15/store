import 'package:dartz/dartz.dart';
import 'package:store/core/network/failure.dart';
import 'package:store/features/authentication/domain/entities/login.dart';

import '../usecase/login_usecase.dart';


abstract class Authentication {
  Future<Either<Failure,Login>>loginRepo(LoginParams  loginParams);

}