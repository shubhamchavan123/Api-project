/// firstName : "string"
/// lastName : "string"
/// userName : "string"
/// password : "string"
/// otp : "string"
/// registerfrom : 1
/// referCode : "string"

class RegistrationRequstModel {
  RegistrationRequstModel({
      String? firstName, 
      String? lastName, 
      String? userName, 
      String? password, 
      String? otp, 
      num? registerfrom, 
      String? referCode,}){
    _firstName = firstName;
    _lastName = lastName;
    _userName = userName;
    _password = password;
    _otp = otp;
    _registerfrom = registerfrom;
    _referCode = referCode;
}

  RegistrationRequstModel.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _userName = json['userName'];
    _password = json['password'];
    _otp = json['otp'];
    _registerfrom = json['registerfrom'];
    _referCode = json['referCode'];
  }
  String? _firstName;
  String? _lastName;
  String? _userName;
  String? _password;
  String? _otp;
  num? _registerfrom;
  String? _referCode;
RegistrationRequstModel copyWith({  String? firstName,
  String? lastName,
  String? userName,
  String? password,
  String? otp,
  num? registerfrom,
  String? referCode,
}) => RegistrationRequstModel(  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  userName: userName ?? _userName,
  password: password ?? _password,
  otp: otp ?? _otp,
  registerfrom: registerfrom ?? _registerfrom,
  referCode: referCode ?? _referCode,
);
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get userName => _userName;
  String? get password => _password;
  String? get otp => _otp;
  num? get registerfrom => _registerfrom;
  String? get referCode => _referCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['userName'] = _userName;
    map['password'] = _password;
    map['otp'] = _otp;
    map['registerfrom'] = _registerfrom;
    map['referCode'] = _referCode;
    return map;
  }

}