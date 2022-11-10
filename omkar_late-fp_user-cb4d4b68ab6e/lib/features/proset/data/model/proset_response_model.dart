/// status : 200
/// statusMessage : "Android User App "
/// data : {"id":30,"name":"Android","settingKey":"APKUserVersion","settingValue":"1.0.37","description":"Promo Code update"}

class ProsetResponseModel {
  ProsetResponseModel({
      num? status, 
      String? statusMessage, 
      Data? data,}){
    _status = status;
    _statusMessage = statusMessage;
    _data = data;
}

  ProsetResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _statusMessage = json['statusMessage'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _status;
  String? _statusMessage;
  Data? _data;
ProsetResponseModel copyWith({  num? status,
  String? statusMessage,
  Data? data,
}) => ProsetResponseModel(  status: status ?? _status,
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

/// id : 30
/// name : "Android"
/// settingKey : "APKUserVersion"
/// settingValue : "1.0.37"
/// description : "Promo Code update"

class Data {
  Data({
      num? id, 
      String? name, 
      String? settingKey, 
      String? settingValue, 
      String? description,}){
    _id = id;
    _name = name;
    _settingKey = settingKey;
    _settingValue = settingValue;
    _description = description;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _settingKey = json['settingKey'];
    _settingValue = json['settingValue'];
    _description = json['description'];
  }
  num? _id;
  String? _name;
  String? _settingKey;
  String? _settingValue;
  String? _description;
Data copyWith({  num? id,
  String? name,
  String? settingKey,
  String? settingValue,
  String? description,
}) => Data(  id: id ?? _id,
  name: name ?? _name,
  settingKey: settingKey ?? _settingKey,
  settingValue: settingValue ?? _settingValue,
  description: description ?? _description,
);
  num? get id => _id;
  String? get name => _name;
  String? get settingKey => _settingKey;
  String? get settingValue => _settingValue;
  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['settingKey'] = _settingKey;
    map['settingValue'] = _settingValue;
    map['description'] = _description;
    return map;
  }

}