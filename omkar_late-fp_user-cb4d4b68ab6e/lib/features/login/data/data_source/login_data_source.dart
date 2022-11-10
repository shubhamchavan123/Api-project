import 'dart:convert';

import 'package:apidemo/core/error_haldling/custom_exception.dart';
import 'package:apidemo/features/login/data/model/LoginRequestModel.dart';
import 'package:apidemo/features/login/data/model/login_response_model.dart';
import 'package:apidemo/networking_model/network_data_source/network_data_repo.dart';
import 'package:apidemo/networking_model/network_data_source/response_statuscode_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

abstract class LoginDataSource {
  Future<Either<CustomException, LoginResponseModel>> getLoginData(
      {required http.Client client, required LoginRequestModel requestBody});
}

class LoginDataSourceImpl implements LoginDataSource {
  @override
  Future<Either<CustomException, LoginResponseModel>> getLoginData(
      {required http.Client client, required LoginRequestModel requestBody}) async {

    try {
      var response = await NetworkDataRepo().getLoginData(client: client, requestBody: requestBody);
      var responseResult = responseStatusCodeHandler(response: response);
      return responseResult.fold((l) {
        /// Errors
        return Left(l);
      }, (r) {
        /// Success
        Map<String, dynamic>? loginData = json.decode(response.body);
        return Right(LoginResponseModel.fromJson(loginData!));
      });
    } catch (e) {
      rethrow;
    }


  }
}
