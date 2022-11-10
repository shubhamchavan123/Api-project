import 'package:apidemo/features/registration/data/model/registration_requst_model.dart';
import 'package:apidemo/features/registration/data/model/registration_response_model.dart';
import 'package:apidemo/features/registration/domain/registration_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class RegistrationController with ChangeNotifier {
  TextEditingController? registrationfirstnameController =
  TextEditingController();
  TextEditingController? registrationlastnameController =
  TextEditingController();
  TextEditingController? registrationusernameController =
  TextEditingController();
  TextEditingController? registrationpasswordController =
  TextEditingController();

  TextEditingController? registrationotpdController =
  TextEditingController();



  bool isObscure = true;

  RegistrationUseCase registrationUseCase = RegistrationUseCase();

  String? s1, s2, s3, s4;

  RegistrationController() {
    initSetup();
    notifyListeners();
  }

  void onRegistration(String firstName, String lastName, String userName,
      String password,String otp) async {
    var registrationRequest = RegistrationRequstModel(
        firstName: firstName,
        lastName: lastName,
        userName: userName,
        password: password,
        registerfrom: 1,
        otp: otp,
        referCode: '');

    var client = http.Client();

    var mRegistration = await registrationUseCase.getRegistrationNotifier(
        client: client, body: registrationRequest);

    client.close();

    mRegistration.fold((l) {
      /// Error Message appear here
    }, (r) {
      ///
      RegistrationResponseModel registrationResponseModel =
      RegistrationResponseModel();

      registrationResponseModel = r;
      debugPrint('Login Response: ${registrationResponseModel.status}');


      if(registrationResponseModel.status==200){
        // otpverification();

        debugPrint('show OTP ');
      }else{
        debugPrint(' Not show OTP ');
      }

    });

    // void initSetup() {}

    void showPassword(bool isHide) {
      isObscure = !isHide;
      debugPrint('show password isHide: $isHide');
      debugPrint('show password isObscure: $isObscure');
      notifyListeners();
    }
  }

  void initSetup() {}

  // void showPassword(bool isObscure) {}

  void showPassword(bool isHide) {
    isObscure = !isHide;
    debugPrint('show password isHide: $isHide');
    debugPrint('show password isObscure: $isHide');
    notifyListeners();
  }

  void otpverification() {

  }
}