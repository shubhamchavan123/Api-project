import 'package:apidemo/core/error_haldling/custom_exception.dart';
import 'package:apidemo/features/login/data/model/LoginRequestModel.dart';
import 'package:apidemo/features/login/data/model/login_response_model.dart';
import 'package:apidemo/features/login/data/repository/login_repository.dart';
import 'package:apidemo/features/proset/data/model/proset_response_model.dart';
import 'package:apidemo/features/proset/data/repository/proset_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class ProSetUseCase {

  ProSetRepositoryImpl prosetRepositoryImpl = ProSetRepositoryImpl();

  Future<Either<CustomException, ProsetResponseModel>> getProSetNotifier(
      {required http.Client client}) async {
    return await prosetRepositoryImpl.getProSetData(client: client);
  }
}

