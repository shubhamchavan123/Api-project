import 'package:apidemo/networking_model/api_base_model/base_url.dart';
import 'package:flutter/material.dart';

class URIBuilder {
  /// Set Auth Token
  getHeaderWithToken({required String token}) {
    // debugPrint
    return {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
  }

  getApiEndPointHeaderContentType() {
    return {
      'Content-Type': 'application/json',
    };
  }

  /// Login URI
  Uri getLoginData() {
    return Uri(
      scheme: BaseUrl.getProtocol,
      host: BaseUrl.baseUrl,
      path: BaseUrl.loginPath,
    );
  }

  /// Registation URI
  Uri getRegistrationData() {
    return Uri(
      scheme: BaseUrl.getProtocol,
      host: BaseUrl.baseUrl,
      path: BaseUrl.registration,
    );
  }


  Uri getProSetData() {
    return Uri(
      scheme: BaseUrl.getProtocol,
      host: BaseUrl.baseUrl,
      path: BaseUrl.proset,
    );
  }
}
