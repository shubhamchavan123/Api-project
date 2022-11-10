

import 'package:apidemo/core/error_haldling/custom_exception.dart';
import 'package:apidemo/features/login/data/model/login_response_model.dart';
import 'package:apidemo/features/registration/data/model/registration_requst_model.dart';
import 'package:apidemo/features/registration/data/model/registration_response_model.dart';
import 'package:apidemo/features/registration/data/repository/registration_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class RegistrationUseCase{

  RegistrationRepositoryImpl registrationRepositoryImpl = RegistrationRepositoryImpl();

  Future<Either<CustomException, RegistrationResponseModel>> getRegistrationNotifier(
      {required http.Client client,  required RegistrationRequstModel body}) async {
    return await registrationRepositoryImpl.getRegistrationData(client: client, requestBody: body);
  }

}