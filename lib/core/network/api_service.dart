import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:store/core/network/error_handler.dart';
import 'package:store/core/network/failure.dart';

import '../app/constants.dart';

typedef ResponseConverter<T> = T Function(dynamic response);

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Either<Failure, T>> get<T>({
    required String endPoint,
    dynamic data,
    dynamic params,
    required ResponseConverter<T> converter,
  }) async {
    try {
      final    response = await _dio.get('${Constants.baseUrl}$endPoint',
          data: data, queryParameters: params);



      if (response.statusCode ==  ResponseCode.SUCCESS || response.statusCode ==  ResponseCode.NO_CONTENT) {


        return Right( converter(response.data));

      }
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
      );
    } on DioException catch (e) {
      return Left(
        Failure(
          code: e.response!.statusCode,
          message: e.response!.data,
        ),
      );
    }
  }

  Future<Either<Failure, T>> post<T>({
    required String endPoint,
    dynamic data,
    dynamic params,
    required ResponseConverter<T> converter,
  }) async {
    try {
      final response = await _dio.post('${Constants.baseUrl}$endPoint',
          data: data, queryParameters: params);
      if (response.statusCode ==  ResponseCode.SUCCESS || response.statusCode ==  ResponseCode.NO_CONTENT) {
        return Right(converter(response.data ));
      }
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
      );
    } on DioException catch (e) {
      return Left(
        Failure(
          code: e.response!.statusCode,
          message: e.response!.data,
        ),
      );
    }
  }

  Future<Either<Failure, T>> put<T>({
    required String endPoint,
    dynamic data,
    dynamic params,
    required ResponseConverter<T> converter,
  }) async {
    try {
      final response = await _dio.put('${Constants.baseUrl}$endPoint',
          data: data, queryParameters: params);
      if (response.statusCode ==  ResponseCode.SUCCESS || response.statusCode ==  ResponseCode.NO_CONTENT) {
        return Right(converter(response.data));
      }
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
      );
    } on DioException catch (e) {
      return Left(
        Failure(
          code: e.response!.statusCode,
          message: e.response!.data['message'],
        ),
      );
    }
  }

  Future<Either<Failure, T>> delete<T>({
    required String endPoint,
    dynamic data,
    dynamic params,
    required ResponseConverter<T> converter,
  }) async {
    try {
      final response = await _dio.delete('${Constants.baseUrl}$endPoint',
          data: data, queryParameters: params);
      if (response.statusCode == ResponseCode.SUCCESS || response.statusCode ==  ResponseCode.NO_CONTENT) {
        return Right(converter(response.data));
      }
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
      );
    } on DioException catch (e) {
      return Left(
        Failure(
          code: e.response!.statusCode,
          message: e.response!.data['message'],
        ),
      );
    }
  }
}
