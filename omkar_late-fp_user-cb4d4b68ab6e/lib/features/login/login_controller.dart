import 'package:apidemo/features/login/data/model/LoginRequestModel.dart';
import 'package:apidemo/features/login/data/model/login_response_model.dart';
import 'package:apidemo/features/login/domain/login_use_case.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginController with ChangeNotifier {
  TextEditingController? usernameController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();

  bool isObscure = true;

  LoginUseCase loginUseCase = LoginUseCase();

  String? s1, s2;

  LoginController() {
    initSetup();
    notifyListeners();
  }

  void onLogin(String username, String password) async {
    var loginRequest =
        LoginRequestModel(userName: username, password: password, loginfrom: 1);
    var client = http.Client();

    var mLogin =
        await loginUseCase.getLoginNotifier(client: client, body: loginRequest);

    client.close();

    mLogin.fold((l) {
      /// Error Message appear here
    }, (r) {
      ///
      LoginResponseModel loginResponseModel = LoginResponseModel();
      loginResponseModel = r;
      debugPrint('Login Response: ${loginResponseModel.status}');
    });

  }

  void initSetup() {}

  void showPassword(bool isHide) {
    isObscure = !isHide;
    debugPrint('show password isHide: $isHide');
    debugPrint('show password isObscure: $isObscure');
    notifyListeners();
  }
}
