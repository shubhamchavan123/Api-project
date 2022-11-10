import 'package:apidemo/features/login/data/model/LoginRequestModel.dart';
import 'package:apidemo/features/login/data/model/login_response_model.dart';
import 'package:apidemo/features/login/domain/login_use_case.dart';
import 'package:apidemo/features/proset/data/model/proset_response_model.dart';
import 'package:apidemo/features/proset/domain/proset_use_case.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProSetController with ChangeNotifier {



  ProSetUseCase proSetUseCase = ProSetUseCase();



  ProSetController() {
    initSetup();
    notifyListeners();
  }

  void onProSet() async {
    var client = http.Client();

    var mProSet = await proSetUseCase.getProSetNotifier(client: client);

    client.close();

    mProSet.fold((l) {
      /// Error Message appear here
      debugPrint('ProSet Response:');

    }, (r) {
      ///
      ProsetResponseModel prosetResponseModel = ProsetResponseModel();
      prosetResponseModel = r;
      debugPrint('ProSet Response: ${prosetResponseModel.status}');
    });

  }

  void initSetup() {}


}
