import 'package:base_clean/data/network/failure.dart';
import 'package:base_clean/presentation/base/resources/strings_manager.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unauthorized,
  notFound,
  internalServerError,
  connectTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  defaultError,
  firebaseAuthError,
  tooManyRequestError
}

class ResponseCode {
//  Api status code
  static const int success = 200; //success with data;
  static const int noContent = 204; //success with no content
  static const int badRequest = 400; // failure, api rejected the request
  static const int forbidden = 403; //failure, api rejected the request
  static const int unauthorized = 401; //failure, api is not authorized
  static const int notFound = 404; //failure, api is not correct and not found
  static const int internalServerError =
      500; //failure, api is not correct and not found
// local status code
  static const int defaultError = -1;
  static const int connectTimeout = -2;
  static const int cancel = -3;
  static const int receiveTimeout = -4;
  static const int sendTimeout = -5;
  static const int cacheError = -6;
  static const int noInternetConnection = -7;

//  firebase status error

  static const int firebaseAuthError = -100;
}

class ResponseMessage {
  //api status message
  static String success = AppStrings.processing.tr();
  static String noContent = AppStrings.processing.tr();
  static String badRequest = AppStrings.processing.tr();
  static String forbidden = AppStrings.processing.tr();
  static String unauthorized = AppStrings.processing.tr();
  static String notFound = AppStrings.processing.tr();
  static String internalServerError = AppStrings.processing.tr();

  //local status message
  static String defaultError = AppStrings.processing.tr();
  static String connectTimeout = AppStrings.processing.tr();
  static String cancel = AppStrings.processing.tr();
  static String receiveTimeout = AppStrings.processing.tr();
  static String sendTimeout = AppStrings.processing.tr();
  static String cacheError = AppStrings.processing.tr();
  static String noInternetConnection = AppStrings.processing.tr();

  //firebase status message
  static String firebaseAuthError = AppStrings.wrongEmailAddressOrPassword.tr();
  static String tooManyRequestError = AppStrings.processing.tr();
}

class ApiInternalStatus {}

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handler(dynamic error) {
    if (error is DioError) {
    } else {
      DataSource.defaultError.getFailure();
    }
  }
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.success:
        return Failure(ResponseCode.success, ResponseMessage.success);
      case DataSource.noContent:
        return Failure(ResponseCode.noContent, ResponseMessage.noContent);
      case DataSource.badRequest:
        return Failure(ResponseCode.badRequest, ResponseMessage.badRequest);
      case DataSource.forbidden:
        return Failure(ResponseCode.forbidden, ResponseMessage.forbidden);
      case DataSource.unauthorized:
        return Failure(ResponseCode.unauthorized, ResponseMessage.unauthorized);
      case DataSource.notFound:
        return Failure(ResponseCode.notFound, ResponseMessage.notFound);
      case DataSource.internalServerError:
        return Failure(ResponseCode.internalServerError,
            ResponseMessage.internalServerError);
      case DataSource.connectTimeout:
        return Failure(
            ResponseCode.connectTimeout, ResponseMessage.connectTimeout);
      case DataSource.cancel:
        return Failure(ResponseCode.cancel, ResponseMessage.cancel);
      case DataSource.receiveTimeout:
        return Failure(
            ResponseCode.receiveTimeout, ResponseMessage.receiveTimeout);
      case DataSource.sendTimeout:
        return Failure(ResponseCode.sendTimeout, ResponseMessage.sendTimeout);
      case DataSource.cacheError:
        return Failure(ResponseCode.cacheError, ResponseMessage.cacheError);
      case DataSource.noInternetConnection:
        return Failure(ResponseCode.noInternetConnection,
            ResponseMessage.noInternetConnection);
      case DataSource.defaultError:
        return Failure(ResponseCode.defaultError, ResponseMessage.defaultError);
      case DataSource.firebaseAuthError:
        return Failure(
            ResponseCode.firebaseAuthError, ResponseMessage.firebaseAuthError);
      case DataSource.tooManyRequestError:
        return Failure(ResponseCode.firebaseAuthError,
            ResponseMessage.tooManyRequestError);
      default:
        return Failure(ResponseCode.defaultError, ResponseMessage.defaultError);
    }
  }
}
