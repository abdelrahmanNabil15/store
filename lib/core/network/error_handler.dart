import 'package:dio/dio.dart';
import 'package:store/core/util/langauge_manager.dart';
import 'package:store/core/util/string_manager.dart';


import '../app/app.dart';
import 'failure.dart';

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      failure = _handleError(error);
    } else {
      // default error
      failure = DataSource.DEFAULT.getFailure();
    }
  }
}

Failure _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.CONNECT_TIMEOUT.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.SEND_TIMEOUT.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.RECIEVE_TIMEOUT.getFailure();
    case DioExceptionType.badResponse:
      if (error.response != null && error.response?.statusCode != null && error.response?.statusMessage != null) {
        return Failure(code: error.response?.statusCode ?? 0,  message: error.response?.data["message"] ?? "");
      } else {
        return DataSource.DEFAULT.getFailure();
      }
    case DioExceptionType.cancel:
      return DataSource.CANCEL.getFailure();
    default:
      return DataSource.DEFAULT.getFailure();
  }
}

enum DataSource {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    var mContext = navigatorKey!.currentState!.context;
    switch (this) {
      case DataSource.SUCCESS:
        return Failure(code: ResponseCode.SUCCESS, message: ResponseMessage.SUCCESS.tr(mContext));
      case DataSource.NO_CONTENT:
        return Failure(code: ResponseCode.NO_CONTENT, message: ResponseMessage.NO_CONTENT.tr(mContext));
      case DataSource.BAD_REQUEST:
        return Failure(code: ResponseCode.BAD_REQUEST, message: ResponseMessage.BAD_REQUEST.tr(mContext));
      case DataSource.FORBIDDEN:
        return Failure( code: ResponseCode.FORBIDDEN,message:  ResponseMessage.FORBIDDEN.tr(mContext));
      case DataSource.UNAUTORISED:
        return Failure( code: ResponseCode.UNAUTORISED,message:  ResponseMessage.UNAUTORISED.tr(mContext));
      case DataSource.NOT_FOUND:
        return Failure(code: ResponseCode.NOT_FOUND,message:  ResponseMessage.NOT_FOUND.tr(mContext));
      case DataSource.INTERNAL_SERVER_ERROR:
        return Failure( code: ResponseCode.INTERNAL_SERVER_ERROR,
           message:  ResponseMessage.INTERNAL_SERVER_ERROR.tr(mContext));
      case DataSource.CONNECT_TIMEOUT:
        return Failure(
          code:   ResponseCode.CONNECT_TIMEOUT,message:  ResponseMessage.CONNECT_TIMEOUT.tr(mContext));
      case DataSource.CANCEL:
        return Failure(code: ResponseCode.CANCEL,message:  ResponseMessage.CANCEL.tr(mContext));
      case DataSource.RECIEVE_TIMEOUT:
        return Failure(
        code:    ResponseCode.RECIEVE_TIMEOUT,message:  ResponseMessage.RECIEVE_TIMEOUT.tr(mContext));
      case DataSource.SEND_TIMEOUT:
        return Failure(code:  ResponseCode.SEND_TIMEOUT,message:  ResponseMessage.SEND_TIMEOUT.tr(mContext));
      case DataSource.CACHE_ERROR:
        return Failure( code: ResponseCode.CACHE_ERROR, message: ResponseMessage.CACHE_ERROR.tr(mContext));
      case DataSource.NO_INTERNET_CONNECTION:
        return Failure(code: ResponseCode.NO_INTERNET_CONNECTION,
         message:    ResponseMessage.NO_INTERNET_CONNECTION.tr(mContext));
      case DataSource.DEFAULT:
        return Failure( code: ResponseCode.DEFAULT,message:  ResponseMessage.DEFAULT.tr(mContext));
    }
  }
}

class ResponseCode {
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no data (no content)
  static const int BAD_REQUEST = 400; // failure, API rejected request
  static const int UNAUTORISED = 401; // failure, user is not authorised
  static const int FORBIDDEN = 403; //  failure, API rejected request
  static const int INTERNAL_SERVER_ERROR = 500; // failure, crash in server side
  static const int NOT_FOUND = 404; // failure, not found

  // local status code
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECIEVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

class ResponseMessage {
  static const String SUCCESS = AppStrings.success; // success with data
  static const String NO_CONTENT = AppStrings.success; // success with no data (no content)
  static const String BAD_REQUEST = AppStrings.strBadRequestError; // failure, API rejected request
  static const String UNAUTORISED = AppStrings.strUnauthorizedError; // failure, user is not authorised
  static const String FORBIDDEN = AppStrings.strForbiddenError; //  failure, API rejected request
  static const String INTERNAL_SERVER_ERROR = AppStrings.strInternalServerError; // failure, crash in server side
  static const String NOT_FOUND = AppStrings.strNotFoundError; // failure, crash in server side

  // local status code
  static const String CONNECT_TIMEOUT = AppStrings.strTimeoutError;
  static const String CANCEL = AppStrings.strDefaultError;
  static const String RECIEVE_TIMEOUT = AppStrings.strTimeoutError;
  static const String SEND_TIMEOUT = AppStrings.strTimeoutError;
  static const String CACHE_ERROR = AppStrings.strCacheError;
  static const String NO_INTERNET_CONNECTION = AppStrings.strNoInternetError;
  static const String DEFAULT = AppStrings.strDefaultError;
}

class ApiInternalStatus {
  static const int SUCCESS = 200;
  static const int FAILURE = 400;
}
