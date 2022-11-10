import 'dart:convert';

import 'package:apidemo/core/error_haldling/custom_exception.dart';
import 'package:apidemo/features/login/data/model/login_response_model.dart';
import 'package:apidemo/networking_model/network_data_source/network_data_repo.dart';
import 'package:apidemo/networking_model/network_data_source/response_statuscode_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'package:apidemo/features/registration/data/model/registration_requst_model.dart';
import 'package:apidemo/features/registration/data/model/registration_response_model.dart';

abstract class RegistrationDataSource {
  Future<Either<CustomException, RegistrationResponseModel>>
      getRegistrationData(
          {required http.Client client,
          required RegistrationRequstModel requestBody});
}

class RegistrationDataSourceImpl implements RegistrationDataSource {
  @override
  Future<Either<CustomException, RegistrationResponseModel>>
      getRegistrationData(
          {required http.Client client,
          required RegistrationRequstModel requestBody}) async {
    try {
      var response = await NetworkDataRepo().getRegistrationData(client: client, requestBody: requestBody);

      var responseResult = responseStatusCodeHandler(response: response);

      return responseResult.fold((l) {
        /// Errors
        return Left(l);
      }, (r) {
        /// Success
        Map<String, dynamic>? loginData = json.decode(response.body);
        return Right(RegistrationResponseModel.fromJson(loginData!));
      });
    } catch (e) {
      rethrow;
    }
  }
}
