import 'dart:convert';
/// customer : {"customer_id":"78","customer_name":"sharon","last_name":"","customer_email":"dan100@gmail.com","customer_phone":"9539991819","customer_dob":"","customer_gender":"","customer_status":"1"}
/// address : {"name":"sharon","last_name":"","phone":"7510711543","email":"","alternate_phone":"","customer_landmark":"paddam","country":"india","customer_city":"konikkara","address_type":"0","address_id":"136","customer_address":"maliyakkalhouse","customer_state":null,"s_id":"0","d_id":"0","customer_district":null,"customer_pincode":"680306","set_as_default":"1","state_id":null,"longitude":"0","latitude":"0"}
/// all_address : [{"name":"sharon","last_name":"","country":"india","phone":"7510711543","email":"","alternate_phone":"","customer_landmark":"paddam","customer_city":"konikkara","address_type":"0","address_id":"135","customer_address":"maliyakkal house","customer_state":null,"s_id":"0","d_id":"0","customer_district":null,"customer_pincode":"680306","set_as_default":"0","state_id":null,"longitude":"0","latitude":"0","set_bill_default":"1"},{"name":"sharon","last_name":"","country":"india","phone":"7510711543","email":"","alternate_phone":"","customer_landmark":"paddam","customer_city":"konikkara","address_type":"0","address_id":"136","customer_address":"maliyakkalhouse","customer_state":null,"s_id":"0","d_id":"0","customer_district":null,"customer_pincode":"680306","set_as_default":"1","state_id":null,"longitude":"0","latitude":"0","set_bill_default":"1"},{"name":"sharon","last_name":"","country":"india","phone":"7510711543","email":"","alternate_phone":"","customer_landmark":"paddam","customer_city":"konikkara","address_type":"0","address_id":"137","customer_address":"maliyakkalhouse","customer_state":null,"s_id":"0","d_id":"0","customer_district":null,"customer_pincode":"680306","set_as_default":"1","state_id":null,"longitude":"0","latitude":"0","set_bill_default":"1"}]
/// status : 200

Alladressmodel alladressmodelFromJson(String str) => Alladressmodel.fromJson(json.decode(str));
String alladressmodelToJson(Alladressmodel data) => json.encode(data.toJson());
class Alladressmodel {
  Alladressmodel({
      Customer? customer, 
      Address? address, 
      List<AllAddress>? allAddress, 
      num? status,}){
    _customer = customer;
    _address = address;
    _allAddress = allAddress;
    _status = status;
}

  Alladressmodel.fromJson(dynamic json) {
    _customer = json['customer'] != null ? Customer.fromJson(json['customer']) : null;
    _address = json['address'] != null ? Address.fromJson(json['address']) : null;
    if (json['all_address'] != null) {
      _allAddress = [];
      json['all_address'].forEach((v) {
        _allAddress?.add(AllAddress.fromJson(v));
      });
    }
    _status = json['status'];
  }
  Customer? _customer;
  Address? _address;
  List<AllAddress>? _allAddress;
  num? _status;
Alladressmodel copyWith({  Customer? customer,
  Address? address,
  List<AllAddress>? allAddress,
  num? status,
}) => Alladressmodel(  customer: customer ?? _customer,
  address: address ?? _address,
  allAddress: allAddress ?? _allAddress,
  status: status ?? _status,
);
  Customer? get customer => _customer;
  Address? get address => _address;
  List<AllAddress>? get allAddress => _allAddress;
  num? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_customer != null) {
      map['customer'] = _customer?.toJson();
    }
    if (_address != null) {
      map['address'] = _address?.toJson();
    }
    if (_allAddress != null) {
      map['all_address'] = _allAddress?.map((v) => v.toJson()).toList();
    }
    map['status'] = _status;
    return map;
  }

}

/// name : "sharon"
/// last_name : ""
/// country : "india"
/// phone : "7510711543"
/// email : ""
/// alternate_phone : ""
/// customer_landmark : "paddam"
/// customer_city : "konikkara"
/// address_type : "0"
/// address_id : "135"
/// customer_address : "maliyakkal house"
/// customer_state : null
/// s_id : "0"
/// d_id : "0"
/// customer_district : null
/// customer_pincode : "680306"
/// set_as_default : "0"
/// state_id : null
/// longitude : "0"
/// latitude : "0"
/// set_bill_default : "1"

AllAddress allAddressFromJson(String str) => AllAddress.fromJson(json.decode(str));
String allAddressToJson(AllAddress data) => json.encode(data.toJson());
class AllAddress {
  AllAddress({
      String? name, 
      String? lastName, 
      String? country, 
      String? phone, 
      String? email, 
      String? alternatePhone, 
      String? customerLandmark, 
      String? customerCity, 
      String? addressType, 
      String? addressId, 
      String? customerAddress, 
      dynamic customerState, 
      String? sId, 
      String? dId, 
      dynamic customerDistrict, 
      String? customerPincode, 
      String? setAsDefault, 
      dynamic stateId, 
      String? longitude, 
      String? latitude, 
      String? setBillDefault,}){
    _name = name;
    _lastName = lastName;
    _country = country;
    _phone = phone;
    _email = email;
    _alternatePhone = alternatePhone;
    _customerLandmark = customerLandmark;
    _customerCity = customerCity;
    _addressType = addressType;
    _addressId = addressId;
    _customerAddress = customerAddress;
    _customerState = customerState;
    _sId = sId;
    _dId = dId;
    _customerDistrict = customerDistrict;
    _customerPincode = customerPincode;
    _setAsDefault = setAsDefault;
    _stateId = stateId;
    _longitude = longitude;
    _latitude = latitude;
    _setBillDefault = setBillDefault;
}

  AllAddress.fromJson(dynamic json) {
    _name = json['name'];
    _lastName = json['last_name'];
    _country = json['country'];
    _phone = json['phone'];
    _email = json['email'];
    _alternatePhone = json['alternate_phone'];
    _customerLandmark = json['customer_landmark'];
    _customerCity = json['customer_city'];
    _addressType = json['address_type'];
    _addressId = json['address_id'];
    _customerAddress = json['customer_address'];
    _customerState = json['customer_state'];
    _sId = json['s_id'];
    _dId = json['d_id'];
    _customerDistrict = json['customer_district'];
    _customerPincode = json['customer_pincode'];
    _setAsDefault = json['set_as_default'];
    _stateId = json['state_id'];
    _longitude = json['longitude'];
    _latitude = json['latitude'];
    _setBillDefault = json['set_bill_default'];
  }
  String? _name;
  String? _lastName;
  String? _country;
  String? _phone;
  String? _email;
  String? _alternatePhone;
  String? _customerLandmark;
  String? _customerCity;
  String? _addressType;
  String? _addressId;
  String? _customerAddress;
  dynamic _customerState;
  String? _sId;
  String? _dId;
  dynamic _customerDistrict;
  String? _customerPincode;
  String? _setAsDefault;
  dynamic _stateId;
  String? _longitude;
  String? _latitude;
  String? _setBillDefault;
AllAddress copyWith({  String? name,
  String? lastName,
  String? country,
  String? phone,
  String? email,
  String? alternatePhone,
  String? customerLandmark,
  String? customerCity,
  String? addressType,
  String? addressId,
  String? customerAddress,
  dynamic customerState,
  String? sId,
  String? dId,
  dynamic customerDistrict,
  String? customerPincode,
  String? setAsDefault,
  dynamic stateId,
  String? longitude,
  String? latitude,
  String? setBillDefault,
}) => AllAddress(  name: name ?? _name,
  lastName: lastName ?? _lastName,
  country: country ?? _country,
  phone: phone ?? _phone,
  email: email ?? _email,
  alternatePhone: alternatePhone ?? _alternatePhone,
  customerLandmark: customerLandmark ?? _customerLandmark,
  customerCity: customerCity ?? _customerCity,
  addressType: addressType ?? _addressType,
  addressId: addressId ?? _addressId,
  customerAddress: customerAddress ?? _customerAddress,
  customerState: customerState ?? _customerState,
  sId: sId ?? _sId,
  dId: dId ?? _dId,
  customerDistrict: customerDistrict ?? _customerDistrict,
  customerPincode: customerPincode ?? _customerPincode,
  setAsDefault: setAsDefault ?? _setAsDefault,
  stateId: stateId ?? _stateId,
  longitude: longitude ?? _longitude,
  latitude: latitude ?? _latitude,
  setBillDefault: setBillDefault ?? _setBillDefault,
);
  String? get name => _name;
  String? get lastName => _lastName;
  String? get country => _country;
  String? get phone => _phone;
  String? get email => _email;
  String? get alternatePhone => _alternatePhone;
  String? get customerLandmark => _customerLandmark;
  String? get customerCity => _customerCity;
  String? get addressType => _addressType;
  String? get addressId => _addressId;
  String? get customerAddress => _customerAddress;
  dynamic get customerState => _customerState;
  String? get sId => _sId;
  String? get dId => _dId;
  dynamic get customerDistrict => _customerDistrict;
  String? get customerPincode => _customerPincode;
  String? get setAsDefault => _setAsDefault;
  dynamic get stateId => _stateId;
  String? get longitude => _longitude;
  String? get latitude => _latitude;
  String? get setBillDefault => _setBillDefault;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['last_name'] = _lastName;
    map['country'] = _country;
    map['phone'] = _phone;
    map['email'] = _email;
    map['alternate_phone'] = _alternatePhone;
    map['customer_landmark'] = _customerLandmark;
    map['customer_city'] = _customerCity;
    map['address_type'] = _addressType;
    map['address_id'] = _addressId;
    map['customer_address'] = _customerAddress;
    map['customer_state'] = _customerState;
    map['s_id'] = _sId;
    map['d_id'] = _dId;
    map['customer_district'] = _customerDistrict;
    map['customer_pincode'] = _customerPincode;
    map['set_as_default'] = _setAsDefault;
    map['state_id'] = _stateId;
    map['longitude'] = _longitude;
    map['latitude'] = _latitude;
    map['set_bill_default'] = _setBillDefault;
    return map;
  }

}

/// name : "sharon"
/// last_name : ""
/// phone : "7510711543"
/// email : ""
/// alternate_phone : ""
/// customer_landmark : "paddam"
/// country : "india"
/// customer_city : "konikkara"
/// address_type : "0"
/// address_id : "136"
/// customer_address : "maliyakkalhouse"
/// customer_state : null
/// s_id : "0"
/// d_id : "0"
/// customer_district : null
/// customer_pincode : "680306"
/// set_as_default : "1"
/// state_id : null
/// longitude : "0"
/// latitude : "0"

Address addressFromJson(String str) => Address.fromJson(json.decode(str));
String addressToJson(Address data) => json.encode(data.toJson());
class Address {
  Address({
      String? name, 
      String? lastName, 
      String? phone, 
      String? email, 
      String? alternatePhone, 
      String? customerLandmark, 
      String? country, 
      String? customerCity, 
      String? addressType, 
      String? addressId, 
      String? customerAddress, 
      dynamic customerState, 
      String? sId, 
      String? dId, 
      dynamic customerDistrict, 
      String? customerPincode, 
      String? setAsDefault, 
      dynamic stateId, 
      String? longitude, 
      String? latitude,}){
    _name = name;
    _lastName = lastName;
    _phone = phone;
    _email = email;
    _alternatePhone = alternatePhone;
    _customerLandmark = customerLandmark;
    _country = country;
    _customerCity = customerCity;
    _addressType = addressType;
    _addressId = addressId;
    _customerAddress = customerAddress;
    _customerState = customerState;
    _sId = sId;
    _dId = dId;
    _customerDistrict = customerDistrict;
    _customerPincode = customerPincode;
    _setAsDefault = setAsDefault;
    _stateId = stateId;
    _longitude = longitude;
    _latitude = latitude;
}

  Address.fromJson(dynamic json) {
    _name = json['name'];
    _lastName = json['last_name'];
    _phone = json['phone'];
    _email = json['email'];
    _alternatePhone = json['alternate_phone'];
    _customerLandmark = json['customer_landmark'];
    _country = json['country'];
    _customerCity = json['customer_city'];
    _addressType = json['address_type'];
    _addressId = json['address_id'];
    _customerAddress = json['customer_address'];
    _customerState = json['customer_state'];
    _sId = json['s_id'];
    _dId = json['d_id'];
    _customerDistrict = json['customer_district'];
    _customerPincode = json['customer_pincode'];
    _setAsDefault = json['set_as_default'];
    _stateId = json['state_id'];
    _longitude = json['longitude'];
    _latitude = json['latitude'];
  }
  String? _name;
  String? _lastName;
  String? _phone;
  String? _email;
  String? _alternatePhone;
  String? _customerLandmark;
  String? _country;
  String? _customerCity;
  String? _addressType;
  String? _addressId;
  String? _customerAddress;
  dynamic _customerState;
  String? _sId;
  String? _dId;
  dynamic _customerDistrict;
  String? _customerPincode;
  String? _setAsDefault;
  dynamic _stateId;
  String? _longitude;
  String? _latitude;
Address copyWith({  String? name,
  String? lastName,
  String? phone,
  String? email,
  String? alternatePhone,
  String? customerLandmark,
  String? country,
  String? customerCity,
  String? addressType,
  String? addressId,
  String? customerAddress,
  dynamic customerState,
  String? sId,
  String? dId,
  dynamic customerDistrict,
  String? customerPincode,
  String? setAsDefault,
  dynamic stateId,
  String? longitude,
  String? latitude,
}) => Address(  name: name ?? _name,
  lastName: lastName ?? _lastName,
  phone: phone ?? _phone,
  email: email ?? _email,
  alternatePhone: alternatePhone ?? _alternatePhone,
  customerLandmark: customerLandmark ?? _customerLandmark,
  country: country ?? _country,
  customerCity: customerCity ?? _customerCity,
  addressType: addressType ?? _addressType,
  addressId: addressId ?? _addressId,
  customerAddress: customerAddress ?? _customerAddress,
  customerState: customerState ?? _customerState,
  sId: sId ?? _sId,
  dId: dId ?? _dId,
  customerDistrict: customerDistrict ?? _customerDistrict,
  customerPincode: customerPincode ?? _customerPincode,
  setAsDefault: setAsDefault ?? _setAsDefault,
  stateId: stateId ?? _stateId,
  longitude: longitude ?? _longitude,
  latitude: latitude ?? _latitude,
);
  String? get name => _name;
  String? get lastName => _lastName;
  String? get phone => _phone;
  String? get email => _email;
  String? get alternatePhone => _alternatePhone;
  String? get customerLandmark => _customerLandmark;
  String? get country => _country;
  String? get customerCity => _customerCity;
  String? get addressType => _addressType;
  String? get addressId => _addressId;
  String? get customerAddress => _customerAddress;
  dynamic get customerState => _customerState;
  String? get sId => _sId;
  String? get dId => _dId;
  dynamic get customerDistrict => _customerDistrict;
  String? get customerPincode => _customerPincode;
  String? get setAsDefault => _setAsDefault;
  dynamic get stateId => _stateId;
  String? get longitude => _longitude;
  String? get latitude => _latitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['last_name'] = _lastName;
    map['phone'] = _phone;
    map['email'] = _email;
    map['alternate_phone'] = _alternatePhone;
    map['customer_landmark'] = _customerLandmark;
    map['country'] = _country;
    map['customer_city'] = _customerCity;
    map['address_type'] = _addressType;
    map['address_id'] = _addressId;
    map['customer_address'] = _customerAddress;
    map['customer_state'] = _customerState;
    map['s_id'] = _sId;
    map['d_id'] = _dId;
    map['customer_district'] = _customerDistrict;
    map['customer_pincode'] = _customerPincode;
    map['set_as_default'] = _setAsDefault;
    map['state_id'] = _stateId;
    map['longitude'] = _longitude;
    map['latitude'] = _latitude;
    return map;
  }

}

/// customer_id : "78"
/// customer_name : "sharon"
/// last_name : ""
/// customer_email : "dan100@gmail.com"
/// customer_phone : "9539991819"
/// customer_dob : ""
/// customer_gender : ""
/// customer_status : "1"

Customer customerFromJson(String str) => Customer.fromJson(json.decode(str));
String customerToJson(Customer data) => json.encode(data.toJson());
class Customer {
  Customer({
      String? customerId, 
      String? customerName, 
      String? lastName, 
      String? customerEmail, 
      String? customerPhone, 
      String? customerDob, 
      String? customerGender, 
      String? customerStatus,}){
    _customerId = customerId;
    _customerName = customerName;
    _lastName = lastName;
    _customerEmail = customerEmail;
    _customerPhone = customerPhone;
    _customerDob = customerDob;
    _customerGender = customerGender;
    _customerStatus = customerStatus;
}

  Customer.fromJson(dynamic json) {
    _customerId = json['customer_id'];
    _customerName = json['customer_name'];
    _lastName = json['last_name'];
    _customerEmail = json['customer_email'];
    _customerPhone = json['customer_phone'];
    _customerDob = json['customer_dob'];
    _customerGender = json['customer_gender'];
    _customerStatus = json['customer_status'];
  }
  String? _customerId;
  String? _customerName;
  String? _lastName;
  String? _customerEmail;
  String? _customerPhone;
  String? _customerDob;
  String? _customerGender;
  String? _customerStatus;
Customer copyWith({  String? customerId,
  String? customerName,
  String? lastName,
  String? customerEmail,
  String? customerPhone,
  String? customerDob,
  String? customerGender,
  String? customerStatus,
}) => Customer(  customerId: customerId ?? _customerId,
  customerName: customerName ?? _customerName,
  lastName: lastName ?? _lastName,
  customerEmail: customerEmail ?? _customerEmail,
  customerPhone: customerPhone ?? _customerPhone,
  customerDob: customerDob ?? _customerDob,
  customerGender: customerGender ?? _customerGender,
  customerStatus: customerStatus ?? _customerStatus,
);
  String? get customerId => _customerId;
  String? get customerName => _customerName;
  String? get lastName => _lastName;
  String? get customerEmail => _customerEmail;
  String? get customerPhone => _customerPhone;
  String? get customerDob => _customerDob;
  String? get customerGender => _customerGender;
  String? get customerStatus => _customerStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customer_id'] = _customerId;
    map['customer_name'] = _customerName;
    map['last_name'] = _lastName;
    map['customer_email'] = _customerEmail;
    map['customer_phone'] = _customerPhone;
    map['customer_dob'] = _customerDob;
    map['customer_gender'] = _customerGender;
    map['customer_status'] = _customerStatus;
    return map;
  }

}