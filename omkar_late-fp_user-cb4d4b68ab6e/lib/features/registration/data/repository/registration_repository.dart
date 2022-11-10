


import 'package:apidemo/core/error_haldling/custom_exception.dart';
import 'package:apidemo/features/login/data/model/LoginRequestModel.dart';
import 'package:apidemo/features/login/data/model/login_response_model.dart';
import 'package:apidemo/features/registration/data/data_source/registration_data_source.dart';
import 'package:apidemo/features/registration/data/model/registration_requst_model.dart';
import 'package:apidemo/features/registration/data/model/registration_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

abstract class RegistrationRepository{

  Future<Either<CustomException, RegistrationResponseModel>> getRegistrationData(
      {required http.Client client, required RegistrationRequstModel requestBody});

}




class RegistrationRepositoryImpl implements RegistrationRepository {
  RegistrationDataSourceImpl registrationDataSourceImpl =  RegistrationDataSourceImpl();

  @override
  Future<Either<CustomException, RegistrationResponseModel>> getRegistrationData(
      {required http.Client client, required RegistrationRequstModel requestBody}) async {
    return await registrationDataSourceImpl.getRegistrationData(client: client, requestBody: requestBody);
  }




}