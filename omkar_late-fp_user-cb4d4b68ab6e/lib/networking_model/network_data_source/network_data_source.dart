
import 'package:apidemo/core/error_haldling/custom_exception.dart';
import 'package:apidemo/features/login/data/model/LoginRequestModel.dart';
import 'package:apidemo/features/login/data/model/login_response_model.dart';
import 'package:apidemo/features/registration/data/model/registration_requst_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

abstract class NetworkDataSource {

  Future<http.Response> getLoginData(
      {required http.Client client, required LoginRequestModel requestBody});

Future<http.Response> getRegistrationData(
    {required http.Client client, required RegistrationRequstModel requestBody});

  Future<http.Response> getProSetData(
      {required http.Client client});
}