import 'package:apidemo/core/error_haldling/custom_exception.dart';

import 'package:apidemo/features/proset/data/data_source/proset_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../model/proset_response_model.dart';

abstract class ProSetRepository {
  Future<Either<CustomException, ProsetResponseModel>> getProSetData(
      {required http.Client client});
}

class ProSetRepositoryImpl implements ProSetRepository {
  ProSetDataSourceImpl proSetDataSourceImpl = ProSetDataSourceImpl();

  @override
  Future<Either<CustomException, ProsetResponseModel>> getProSetData(
      {required http.Client client }) async {
    return await proSetDataSourceImpl.getProSetData(client: client);
  }

}
