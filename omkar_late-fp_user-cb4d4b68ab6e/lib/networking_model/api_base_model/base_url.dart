

import 'package:flutter/foundation.dart';

const _protocol = 'https';

const _productionBaseUrl = 'fpapinew.flourpicker.com';
const _debugBaseUrl = 'fpapinew.flourpicker.com';

const _loginPath = '/api/User/login';
const _registration ='/api/User/Registration';
const _proset="/api/ProSet/AndroidUserVersion";

class BaseUrl {

  /// Base URL
  static String get baseUrl {
    if (kReleaseMode) {
      return _productionBaseUrl;
    } else {
      return _debugBaseUrl;
    }
  }

  static String get getProtocol {
    return _protocol;
  }

  static String get loginPath {
    return _loginPath;
  }

  static String get registration {
    return _registration;
  }

  static String get proset {
    return _proset;
  }





}