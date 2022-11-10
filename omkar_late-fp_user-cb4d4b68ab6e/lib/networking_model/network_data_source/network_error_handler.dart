import 'dart:io';
import 'package:apidemo/core/error_haldling/custom_exception.dart';
import 'package:apidemo/core/error_haldling/error_constants.dart';
import 'package:flutter/cupertino.dart';

CustomException responseErrorHandler(e) {
  if(e is SocketException ) {
    debugPrint('resnponse Error handler ${e.toString()}');
    return NetworkErrorException(ErrorMessage.networkErrorExceptionMsg);
  }  if (e is TimeOutException){
    debugPrint('resnponse Error handler ${e.toString()}');
    return TimeOutException(ErrorMessage.timeOutExceptionMsg);
  }  if (e is FormatException){
    debugPrint('resnponse Error handler ${e.toString()}');
    return TimeOutException(ErrorMessage.formatExceptionMsg);
  }  if (e is CustomException){
    debugPrint('resnponse Error handler ${e.toString()}');
    return CustomException(ErrorMessage.formatExceptionMsg);
  }
  return UnKnownException(e.toString());
}