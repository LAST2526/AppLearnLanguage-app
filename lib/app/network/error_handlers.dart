import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '/app/network/exceptions/api_exception.dart';
import '/app/network/exceptions/app_exception.dart';
import '/app/network/exceptions/network_exception.dart';
import '/app/network/exceptions/not_found_exception.dart';
import '/app/network/exceptions/service_unavailable_exception.dart';
import '/flavors/build_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Exception handleError(String error) {
  final appLocalization = AppLocalizations.of(Get.context!);
  final logger = BuildConfig.instance.config.logger;
  logger.e("Generic exception: $error");

  return AppException(message: appLocalization!.error_server);
}

Exception handleDioError(DioException dioError) {
  final appLocalization = AppLocalizations.of(Get.context!);
  switch (dioError.type) {
    case DioExceptionType.cancel:
      return AppException(message: appLocalization!.error_server);
    case DioExceptionType.connectionTimeout:
      return AppException(message: appLocalization!.error_server);
    case DioExceptionType.connectionError:
      return NetworkException(appLocalization!.error_server);
    case DioExceptionType.receiveTimeout:
      return TimeoutException(appLocalization!.error_server);
    case DioExceptionType.sendTimeout:
      return TimeoutException(appLocalization!.error_server);
    case DioExceptionType.badResponse:
      return _parseDioErrorResponse(dioError);
    case DioExceptionType.badCertificate:
      return AppException(message: appLocalization!.error_server);
    case DioExceptionType.unknown:
      return NetworkException(appLocalization!.error_server);
  }
}

Exception _parseDioErrorResponse(DioException dioError) {
  final logger = BuildConfig.instance.config.logger;
  final appLocalization = AppLocalizations.of(Get.context!);

  int statusCode = dioError.response?.statusCode ?? -1;
  String? status;
  String? serverMessage;

  try {
    if (statusCode == -1 || statusCode == HttpStatus.ok || statusCode == 201) {
      statusCode = dioError.response?.data["statusCode"];
    }
    status = dioError.response!.statusCode.toString();
    serverMessage = dioError.response!.data["message"];
  } catch (e, s) {
    logger.i("$e");
    logger.i(s.toString());

    serverMessage = appLocalization!.error_server;
  }

  switch (statusCode) {
    case HttpStatus.serviceUnavailable:
      return ServiceUnavailableException(appLocalization!.error_server);
    case HttpStatus.notFound:
      return NotFoundException(serverMessage ?? "", status ?? "");
    default:
      return ApiException(
          httpCode: statusCode,
          status: status ?? "",
          message: serverMessage ?? "");
  }
}
