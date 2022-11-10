/// userName : "8857870272"
/// password : "123456"
/// loginfrom : 1

class LoginRequestModel {
  LoginRequestModel({
      String? userName, 
      String? password, 
      int? loginfrom,}){
    _userName = userName;
    _password = password;
    _loginfrom = loginfrom;
}

  LoginRequestModel.fromJson(dynamic json) {
    _userName = json['userName'];
    _password = json['password'];
    _loginfrom = json['loginfrom'];
  }
  String? _userName;
  String? _password;
  int? _loginfrom;

  String? get userName => _userName;
  String? get password => _password;
  int? get loginfrom => _loginfrom;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userName'] = _userName;
    map['password'] = _password;
    map['loginfrom'] = _loginfrom;
    return map;
  }

}