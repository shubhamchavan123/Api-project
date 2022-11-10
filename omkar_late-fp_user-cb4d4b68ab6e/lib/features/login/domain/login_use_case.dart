import 'package:apidemo/core/error_haldling/custom_exception.dart';
import 'package:apidemo/features/login/data/model/LoginRequestModel.dart';
import 'package:apidemo/features/login/data/model/login_response_model.dart';
import 'package:apidemo/features/login/data/repository/login_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class LoginUseCase {

  LoginRepositoryImpl loginRepositoryImpl = LoginRepositoryImpl();

  Future<Either<CustomException, LoginResponseModel>> getLoginNotifier(
      {required http.Client client,  required LoginRequestModel body}) async {
    return await loginRepositoryImpl.getLoginData(client: client, requestBody: body);
  }
}
