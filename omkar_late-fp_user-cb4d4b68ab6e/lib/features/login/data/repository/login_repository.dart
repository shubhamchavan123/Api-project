import 'package:apidemo/core/error_haldling/custom_exception.dart';
import 'package:apidemo/features/login/data/data_source/login_data_source.dart';
import 'package:apidemo/features/login/data/model/LoginRequestModel.dart';
import 'package:apidemo/features/login/data/model/login_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

abstract class LoginRepository {
  Future<Either<CustomException, LoginResponseModel>> getLoginData(
      {required http.Client client, required LoginRequestModel requestBody});
}

class LoginRepositoryImpl implements LoginRepository {
  LoginDataSourceImpl loginDataSourceImpl = LoginDataSourceImpl();

  @override
  Future<Either<CustomException, LoginResponseModel>> getLoginData(
      {required http.Client client, required LoginRequestModel requestBody}) async {
    return await loginDataSourceImpl.getLoginData(client: client, requestBody: requestBody);
  }

}
