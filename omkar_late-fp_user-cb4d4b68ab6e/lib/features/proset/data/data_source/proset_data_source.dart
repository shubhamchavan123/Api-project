import 'dart:convert';

import 'package:apidemo/core/error_haldling/custom_exception.dart';
import 'package:apidemo/features/login/data/model/LoginRequestModel.dart';
import 'package:apidemo/features/login/data/model/login_response_model.dart';
import 'package:apidemo/features/proset/data/model/proset_response_model.dart';
import 'package:apidemo/networking_model/network_data_source/network_data_repo.dart';
import 'package:apidemo/networking_model/network_data_source/response_statuscode_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

abstract class ProSetDataSource {
  Future<Either<CustomException, ProsetResponseModel>> getProSetData(
      {required http.Client client });
}

class ProSetDataSourceImpl implements ProSetDataSource {
  @override
  Future<Either<CustomException, ProsetResponseModel>> getProSetData(
      {required http.Client client}) async {

    try {
      var response = await NetworkDataRepo().getProSetData(client: client);
      var responseResult = responseStatusCodeHandler(response: response);
      return responseResult.fold((l) {
        /// Errors
        return Left(l);
      }, (r) {
        /// Success
        Map<String, dynamic>? prosetData = json.decode(response.body);
        return Right(ProsetResponseModel.fromJson(prosetData!));
      });
    } catch (e) {
      rethrow;
    }


  }
}
