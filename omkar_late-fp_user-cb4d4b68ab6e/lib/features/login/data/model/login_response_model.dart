/// status : 200
/// statusMessage : "Welcome...!"
/// data : {"userId":2983,"areaId":8,"isServiceAvailable":true,"firstName":"Abhishek","lastName":"Deshpande","email":"","mobileNumber":"8857870272","languageId":1,"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IiIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvdXNlcmRhdGEiOiIyOTgzIiwidW5pcXVlX25hbWUiOiJBYmhpc2hlayIsInJvbGUiOiI4ODU3ODcwMjcyIiwiYWN0b3J0IjoiMiIsImZhbWlseV9uYW1lIjoiRGVzaHBhbmRlIiwiZ2l2ZW5fbmFtZSI6IjEiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9zaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9leHBpcmVkIjoiMTIvMzAvMjAyMiA0OjEzOjE5IFBNIiwianRpIjoiODQyMWE4YzYtYWU4ZC00OTI1LTkzOTUtODFkZmEzMWQxZjgwIiwibmJmIjoxNjY3MjEyOTk5LCJleHAiOjE2NzI0MTY3OTksImlhdCI6MTY2NzIxMjk5OSwiaXNzIjoiaHR0cDovL29lYy5jb20iLCJhdWQiOiJodHRwOi8vb2VjLmNvbSJ9.J_rcC5VtiQOYEs6kvGsV50k1bsrhHsfaj26piy2OPlg","validTill":"2022-12-30T16:13:19.0457347Z","roleId":2,"role":"User","cityEng":"PIMPRI-CHINCHWAD","cityHin":"पिंपरी-चिंचवड","cityMar":"पिंपरी-चिंचवड","areaNameENg":"Thergaon","areaNameHin":"Thergaon","areaNameMar":"Thergaon","pincode":"411033","profilePath":"https://fpapinew.flourpicker.com//DefaultImage/UserDefault.png","refercode":"90CDQJ","refreshToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IiIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvdXNlcmRhdGEiOiIyOTgzIiwidW5pcXVlX25hbWUiOiJBYmhpc2hlayIsInJvbGUiOiI4ODU3ODcwMjcyIiwiYWN0b3J0IjoiMiIsImZhbWlseV9uYW1lIjoiRGVzaHBhbmRlIiwiZ2l2ZW5fbmFtZSI6IjEiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9zaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9leHBpcmVkIjoiMTIvMzAvMjAyMiA0OjEzOjE5IFBNIiwianRpIjoiMDE3YWQzYTItMjdiZi00OTNlLThiMmMtNjI4MzQ5Mzc2YjJiIiwibmJmIjoxNjY3MjEyOTk5LCJleHAiOjE2NzI0MTY3OTksImlhdCI6MTY2NzIxMjk5OSwiaXNzIjoiaHR0cDovL29lYy5jb20iLCJhdWQiOiJodHRwOi8vb2VjLmNvbSJ9.q2MrKUWK8K_SWZN0RC0xBDjcThin3mV4gA8OP5yEo1Q%406","refresh_ValidTill":"2022-12-30T16:13:19.0461914Z"}

class LoginResponseModel {
  LoginResponseModel({
      int? status, 
      String? statusMessage, 
      Data? data,}){
    _status = status;
    _statusMessage = statusMessage;
    _data = data;
}

  LoginResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _statusMessage = json['statusMessage'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? _status;
  String? _statusMessage;
  Data? _data;

  int? get status => _status;
  String? get statusMessage => _statusMessage;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['statusMessage'] = _statusMessage;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// userId : 2983
/// areaId : 8
/// isServiceAvailable : true
/// firstName : "Abhishek"
/// lastName : "Deshpande"
/// email : ""
/// mobileNumber : "8857870272"
/// languageId : 1
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IiIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvdXNlcmRhdGEiOiIyOTgzIiwidW5pcXVlX25hbWUiOiJBYmhpc2hlayIsInJvbGUiOiI4ODU3ODcwMjcyIiwiYWN0b3J0IjoiMiIsImZhbWlseV9uYW1lIjoiRGVzaHBhbmRlIiwiZ2l2ZW5fbmFtZSI6IjEiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9zaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9leHBpcmVkIjoiMTIvMzAvMjAyMiA0OjEzOjE5IFBNIiwianRpIjoiODQyMWE4YzYtYWU4ZC00OTI1LTkzOTUtODFkZmEzMWQxZjgwIiwibmJmIjoxNjY3MjEyOTk5LCJleHAiOjE2NzI0MTY3OTksImlhdCI6MTY2NzIxMjk5OSwiaXNzIjoiaHR0cDovL29lYy5jb20iLCJhdWQiOiJodHRwOi8vb2VjLmNvbSJ9.J_rcC5VtiQOYEs6kvGsV50k1bsrhHsfaj26piy2OPlg"
/// validTill : "2022-12-30T16:13:19.0457347Z"
/// roleId : 2
/// role : "User"
/// cityEng : "PIMPRI-CHINCHWAD"
/// cityHin : "पिंपरी-चिंचवड"
/// cityMar : "पिंपरी-चिंचवड"
/// areaNameENg : "Thergaon"
/// areaNameHin : "Thergaon"
/// areaNameMar : "Thergaon"
/// pincode : "411033"
/// profilePath : "https://fpapinew.flourpicker.com//DefaultImage/UserDefault.png"
/// refercode : "90CDQJ"
/// refreshToken : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IiIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvdXNlcmRhdGEiOiIyOTgzIiwidW5pcXVlX25hbWUiOiJBYmhpc2hlayIsInJvbGUiOiI4ODU3ODcwMjcyIiwiYWN0b3J0IjoiMiIsImZhbWlseV9uYW1lIjoiRGVzaHBhbmRlIiwiZ2l2ZW5fbmFtZSI6IjEiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9zaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9leHBpcmVkIjoiMTIvMzAvMjAyMiA0OjEzOjE5IFBNIiwianRpIjoiMDE3YWQzYTItMjdiZi00OTNlLThiMmMtNjI4MzQ5Mzc2YjJiIiwibmJmIjoxNjY3MjEyOTk5LCJleHAiOjE2NzI0MTY3OTksImlhdCI6MTY2NzIxMjk5OSwiaXNzIjoiaHR0cDovL29lYy5jb20iLCJhdWQiOiJodHRwOi8vb2VjLmNvbSJ9.q2MrKUWK8K_SWZN0RC0xBDjcThin3mV4gA8OP5yEo1Q%406"
/// refresh_ValidTill : "2022-12-30T16:13:19.0461914Z"

class Data {
  Data({
      int? userId, 
      int? areaId, 
      bool? isServiceAvailable, 
      String? firstName, 
      String? lastName, 
      String? email, 
      String? mobileNumber, 
      int? languageId, 
      String? token, 
      String? validTill, 
      int? roleId, 
      String? role, 
      String? cityEng, 
      String? cityHin, 
      String? cityMar, 
      String? areaNameENg, 
      String? areaNameHin, 
      String? areaNameMar, 
      String? pincode, 
      String? profilePath, 
      String? refercode, 
      String? refreshToken, 
      String? refreshValidTill,}){
    _userId = userId;
    _areaId = areaId;
    _isServiceAvailable = isServiceAvailable;
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _mobileNumber = mobileNumber;
    _languageId = languageId;
    _token = token;
    _validTill = validTill;
    _roleId = roleId;
    _role = role;
    _cityEng = cityEng;
    _cityHin = cityHin;
    _cityMar = cityMar;
    _areaNameENg = areaNameENg;
    _areaNameHin = areaNameHin;
    _areaNameMar = areaNameMar;
    _pincode = pincode;
    _profilePath = profilePath;
    _refercode = refercode;
    _refreshToken = refreshToken;
    _refreshValidTill = refreshValidTill;
}

  Data.fromJson(dynamic json) {
    _userId = json['userId'];
    _areaId = json['areaId'];
    _isServiceAvailable = json['isServiceAvailable'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _email = json['email'];
    _mobileNumber = json['mobileNumber'];
    _languageId = json['languageId'];
    _token = json['token'];
    _validTill = json['validTill'];
    _roleId = json['roleId'];
    _role = json['role'];
    _cityEng = json['cityEng'];
    _cityHin = json['cityHin'];
    _cityMar = json['cityMar'];
    _areaNameENg = json['areaNameENg'];
    _areaNameHin = json['areaNameHin'];
    _areaNameMar = json['areaNameMar'];
    _pincode = json['pincode'];
    _profilePath = json['profilePath'];
    _refercode = json['refercode'];
    _refreshToken = json['refreshToken'];
    _refreshValidTill = json['refresh_ValidTill'];
  }
  int? _userId;
  int? _areaId;
  bool? _isServiceAvailable;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _mobileNumber;
  int? _languageId;
  String? _token;
  String? _validTill;
  int? _roleId;
  String? _role;
  String? _cityEng;
  String? _cityHin;
  String? _cityMar;
  String? _areaNameENg;
  String? _areaNameHin;
  String? _areaNameMar;
  String? _pincode;
  String? _profilePath;
  String? _refercode;
  String? _refreshToken;
  String? _refreshValidTill;

  int? get userId => _userId;
  int? get areaId => _areaId;
  bool? get isServiceAvailable => _isServiceAvailable;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get email => _email;
  String? get mobileNumber => _mobileNumber;
  int? get languageId => _languageId;
  String? get token => _token;
  String? get validTill => _validTill;
  int? get roleId => _roleId;
  String? get role => _role;
  String? get cityEng => _cityEng;
  String? get cityHin => _cityHin;
  String? get cityMar => _cityMar;
  String? get areaNameENg => _areaNameENg;
  String? get areaNameHin => _areaNameHin;
  String? get areaNameMar => _areaNameMar;
  String? get pincode => _pincode;
  String? get profilePath => _profilePath;
  String? get refercode => _refercode;
  String? get refreshToken => _refreshToken;
  String? get refreshValidTill => _refreshValidTill;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = _userId;
    map['areaId'] = _areaId;
    map['isServiceAvailable'] = _isServiceAvailable;
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['email'] = _email;
    map['mobileNumber'] = _mobileNumber;
    map['languageId'] = _languageId;
    map['token'] = _token;
    map['validTill'] = _validTill;
    map['roleId'] = _roleId;
    map['role'] = _role;
    map['cityEng'] = _cityEng;
    map['cityHin'] = _cityHin;
    map['cityMar'] = _cityMar;
    map['areaNameENg'] = _areaNameENg;
    map['areaNameHin'] = _areaNameHin;
    map['areaNameMar'] = _areaNameMar;
    map['pincode'] = _pincode;
    map['profilePath'] = _profilePath;
    map['refercode'] = _refercode;
    map['refreshToken'] = _refreshToken;
    map['refresh_ValidTill'] = _refreshValidTill;
    return map;
  }

}