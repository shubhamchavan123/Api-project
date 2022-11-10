/// status : 200
/// statusMessage : "Welcome to flourPicker...!"
/// data : {"userId":5215,"areaId":0,"isServiceAvailable":false,"firstName":"hari","lastName":"patil","email":"","mobileNumber":"9763182506","languageId":1,"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IiIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvdXNlcmRhdGEiOiI1MjE1IiwidW5pcXVlX25hbWUiOiJoYXJpIiwicm9sZSI6Ijk3NjMxODI1MDYiLCJhY3RvcnQiOiIyIiwiZmFtaWx5X25hbWUiOiJwYXRpbCIsImdpdmVuX25hbWUiOiIxIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvc2lkIjoiMCIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvZXhwaXJlZCI6IjEvNi8yMDIzIDY6MjM6NTYgUE0iLCJqdGkiOiJjNjNlYmYyOS1iMTc0LTRkZTQtOGY5ZC1hOWRlOGVlNzU5MDgiLCJuYmYiOjE2Njc4MjU2MzYsImV4cCI6MTY3MzAyOTQzNiwiaWF0IjoxNjY3ODI1NjM2LCJpc3MiOiJodHRwOi8vb2VjLmNvbSIsImF1ZCI6Imh0dHA6Ly9vZWMuY29tIn0.DAhEuuYK2owWqtUStFkAV5mCIsCDJ7agWrCgrNoNOL8","validTill":"2023-01-06T18:23:56.1607783Z","roleId":2,"role":"User","cityEng":null,"cityHin":null,"cityMar":null,"areaNameENg":null,"areaNameHin":null,"areaNameMar":null,"pincode":null,"profilePath":"https://fpapinew.flourpicker.com//DefaultImage/UserDefault.png","refercode":"AJ94KX","refreshToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IiIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvdXNlcmRhdGEiOiI1MjE1IiwidW5pcXVlX25hbWUiOiJoYXJpIiwicm9sZSI6Ijk3NjMxODI1MDYiLCJhY3RvcnQiOiIyIiwiZmFtaWx5X25hbWUiOiJwYXRpbCIsImdpdmVuX25hbWUiOiIxIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvc2lkIjoiMCIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvZXhwaXJlZCI6IjEvNi8yMDIzIDY6MjM6NTYgUE0iLCJqdGkiOiIzOTQwYmNjOC0xZmQxLTRjZDQtOTI1ZC01NTFiODA1MDZmNzgiLCJuYmYiOjE2Njc4MjU2MzYsImV4cCI6MTY3MzAyOTQzNiwiaWF0IjoxNjY3ODI1NjM2LCJpc3MiOiJodHRwOi8vb2VjLmNvbSIsImF1ZCI6Imh0dHA6Ly9vZWMuY29tIn0.4mkpFHMpACZuT1B8qe2m2qxCOGdFb9sEN35vTqp1EMg%606","refresh_ValidTill":"2023-01-06T18:23:56.1611142Z"}

class RegistrationResponseModel {
  RegistrationResponseModel({
      num? status, 
      String? statusMessage, 
      Data? data,}){
    _status = status;
    _statusMessage = statusMessage;
    _data = data;
}

  RegistrationResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _statusMessage = json['statusMessage'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _status;
  String? _statusMessage;
  Data? _data;
RegistrationResponseModel copyWith({  num? status,
  String? statusMessage,
  Data? data,
}) => RegistrationResponseModel(  status: status ?? _status,
  statusMessage: statusMessage ?? _statusMessage,
  data: data ?? _data,
);
  num? get status => _status;
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

/// userId : 5215
/// areaId : 0
/// isServiceAvailable : false
/// firstName : "hari"
/// lastName : "patil"
/// email : ""
/// mobileNumber : "9763182506"
/// languageId : 1
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IiIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvdXNlcmRhdGEiOiI1MjE1IiwidW5pcXVlX25hbWUiOiJoYXJpIiwicm9sZSI6Ijk3NjMxODI1MDYiLCJhY3RvcnQiOiIyIiwiZmFtaWx5X25hbWUiOiJwYXRpbCIsImdpdmVuX25hbWUiOiIxIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvc2lkIjoiMCIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvZXhwaXJlZCI6IjEvNi8yMDIzIDY6MjM6NTYgUE0iLCJqdGkiOiJjNjNlYmYyOS1iMTc0LTRkZTQtOGY5ZC1hOWRlOGVlNzU5MDgiLCJuYmYiOjE2Njc4MjU2MzYsImV4cCI6MTY3MzAyOTQzNiwiaWF0IjoxNjY3ODI1NjM2LCJpc3MiOiJodHRwOi8vb2VjLmNvbSIsImF1ZCI6Imh0dHA6Ly9vZWMuY29tIn0.DAhEuuYK2owWqtUStFkAV5mCIsCDJ7agWrCgrNoNOL8"
/// validTill : "2023-01-06T18:23:56.1607783Z"
/// roleId : 2
/// role : "User"
/// cityEng : null
/// cityHin : null
/// cityMar : null
/// areaNameENg : null
/// areaNameHin : null
/// areaNameMar : null
/// pincode : null
/// profilePath : "https://fpapinew.flourpicker.com//DefaultImage/UserDefault.png"
/// refercode : "AJ94KX"
/// refreshToken : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IiIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvdXNlcmRhdGEiOiI1MjE1IiwidW5pcXVlX25hbWUiOiJoYXJpIiwicm9sZSI6Ijk3NjMxODI1MDYiLCJhY3RvcnQiOiIyIiwiZmFtaWx5X25hbWUiOiJwYXRpbCIsImdpdmVuX25hbWUiOiIxIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvc2lkIjoiMCIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvZXhwaXJlZCI6IjEvNi8yMDIzIDY6MjM6NTYgUE0iLCJqdGkiOiIzOTQwYmNjOC0xZmQxLTRjZDQtOTI1ZC01NTFiODA1MDZmNzgiLCJuYmYiOjE2Njc4MjU2MzYsImV4cCI6MTY3MzAyOTQzNiwiaWF0IjoxNjY3ODI1NjM2LCJpc3MiOiJodHRwOi8vb2VjLmNvbSIsImF1ZCI6Imh0dHA6Ly9vZWMuY29tIn0.4mkpFHMpACZuT1B8qe2m2qxCOGdFb9sEN35vTqp1EMg%606"
/// refresh_ValidTill : "2023-01-06T18:23:56.1611142Z"

class Data {
  Data({
      num? userId, 
      num? areaId, 
      bool? isServiceAvailable, 
      String? firstName, 
      String? lastName, 
      String? email, 
      String? mobileNumber, 
      num? languageId, 
      String? token, 
      String? validTill, 
      num? roleId, 
      String? role, 
      dynamic cityEng, 
      dynamic cityHin, 
      dynamic cityMar, 
      dynamic areaNameENg, 
      dynamic areaNameHin, 
      dynamic areaNameMar, 
      dynamic pincode, 
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
  num? _userId;
  num? _areaId;
  bool? _isServiceAvailable;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _mobileNumber;
  num? _languageId;
  String? _token;
  String? _validTill;
  num? _roleId;
  String? _role;
  dynamic _cityEng;
  dynamic _cityHin;
  dynamic _cityMar;
  dynamic _areaNameENg;
  dynamic _areaNameHin;
  dynamic _areaNameMar;
  dynamic _pincode;
  String? _profilePath;
  String? _refercode;
  String? _refreshToken;
  String? _refreshValidTill;
Data copyWith({  num? userId,
  num? areaId,
  bool? isServiceAvailable,
  String? firstName,
  String? lastName,
  String? email,
  String? mobileNumber,
  num? languageId,
  String? token,
  String? validTill,
  num? roleId,
  String? role,
  dynamic cityEng,
  dynamic cityHin,
  dynamic cityMar,
  dynamic areaNameENg,
  dynamic areaNameHin,
  dynamic areaNameMar,
  dynamic pincode,
  String? profilePath,
  String? refercode,
  String? refreshToken,
  String? refreshValidTill,
}) => Data(  userId: userId ?? _userId,
  areaId: areaId ?? _areaId,
  isServiceAvailable: isServiceAvailable ?? _isServiceAvailable,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  email: email ?? _email,
  mobileNumber: mobileNumber ?? _mobileNumber,
  languageId: languageId ?? _languageId,
  token: token ?? _token,
  validTill: validTill ?? _validTill,
  roleId: roleId ?? _roleId,
  role: role ?? _role,
  cityEng: cityEng ?? _cityEng,
  cityHin: cityHin ?? _cityHin,
  cityMar: cityMar ?? _cityMar,
  areaNameENg: areaNameENg ?? _areaNameENg,
  areaNameHin: areaNameHin ?? _areaNameHin,
  areaNameMar: areaNameMar ?? _areaNameMar,
  pincode: pincode ?? _pincode,
  profilePath: profilePath ?? _profilePath,
  refercode: refercode ?? _refercode,
  refreshToken: refreshToken ?? _refreshToken,
  refreshValidTill: refreshValidTill ?? _refreshValidTill,
);
  num? get userId => _userId;
  num? get areaId => _areaId;
  bool? get isServiceAvailable => _isServiceAvailable;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get email => _email;
  String? get mobileNumber => _mobileNumber;
  num? get languageId => _languageId;
  String? get token => _token;
  String? get validTill => _validTill;
  num? get roleId => _roleId;
  String? get role => _role;
  dynamic get cityEng => _cityEng;
  dynamic get cityHin => _cityHin;
  dynamic get cityMar => _cityMar;
  dynamic get areaNameENg => _areaNameENg;
  dynamic get areaNameHin => _areaNameHin;
  dynamic get areaNameMar => _areaNameMar;
  dynamic get pincode => _pincode;
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