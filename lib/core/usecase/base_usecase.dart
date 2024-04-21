import 'package:dartz/dartz.dart';
import 'package:store/core/network/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> execute(Params params);
}

/// Class to handle when useCase don't need params
class NoParams {}