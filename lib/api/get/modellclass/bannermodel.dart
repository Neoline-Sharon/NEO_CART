import 'dart:convert';
/// banner_id : "3"
/// banner_name : "Not a Lorem Ipsum whatsoever, but your Lorem Ipsum!"
/// second_line : "Lorem ipsum dolor sit amet."
/// banner_image : "https://ecom.laurelss.com/uploads/banners/169813508325.webp"
/// banner_image_responsive : "169813508327.webp"
/// banner_type : "1"
/// banner_order : "1"
/// banner_url : "https://ecom.laurelss.com/gadgets"
/// banner_status : "1"
/// created_on : "1693548529"
/// updated_on : "1698135083"
/// updated_by : "1"
/// created_by : "1"

Bannermodel bannermodelFromJson(String str) => Bannermodel.fromJson(json.decode(str));
String bannermodelToJson(Bannermodel data) => json.encode(data.toJson());
class Bannermodel {
  Bannermodel({
      String? bannerId, 
      String? bannerName, 
      String? secondLine, 
      String? bannerImage, 
      String? bannerImageResponsive, 
      String? bannerType, 
      String? bannerOrder, 
      String? bannerUrl, 
      String? bannerStatus, 
      String? createdOn, 
      String? updatedOn, 
      String? updatedBy, 
      String? createdBy,}){
    _bannerId = bannerId;
    _bannerName = bannerName;
    _secondLine = secondLine;
    _bannerImage = bannerImage;
    _bannerImageResponsive = bannerImageResponsive;
    _bannerType = bannerType;
    _bannerOrder = bannerOrder;
    _bannerUrl = bannerUrl;
    _bannerStatus = bannerStatus;
    _createdOn = createdOn;
    _updatedOn = updatedOn;
    _updatedBy = updatedBy;
    _createdBy = createdBy;
}

  Bannermodel.fromJson(dynamic json) {
    _bannerId = json['banner_id'];
    _bannerName = json['banner_name'];
    _secondLine = json['second_line'];
    _bannerImage = json['banner_image'];
    _bannerImageResponsive = json['banner_image_responsive'];
    _bannerType = json['banner_type'];
    _bannerOrder = json['banner_order'];
    _bannerUrl = json['banner_url'];
    _bannerStatus = json['banner_status'];
    _createdOn = json['created_on'];
    _updatedOn = json['updated_on'];
    _updatedBy = json['updated_by'];
    _createdBy = json['created_by'];
  }
  String? _bannerId;
  String? _bannerName;
  String? _secondLine;
  String? _bannerImage;
  String? _bannerImageResponsive;
  String? _bannerType;
  String? _bannerOrder;
  String? _bannerUrl;
  String? _bannerStatus;
  String? _createdOn;
  String? _updatedOn;
  String? _updatedBy;
  String? _createdBy;
Bannermodel copyWith({  String? bannerId,
  String? bannerName,
  String? secondLine,
  String? bannerImage,
  String? bannerImageResponsive,
  String? bannerType,
  String? bannerOrder,
  String? bannerUrl,
  String? bannerStatus,
  String? createdOn,
  String? updatedOn,
  String? updatedBy,
  String? createdBy,
}) => Bannermodel(  bannerId: bannerId ?? _bannerId,
  bannerName: bannerName ?? _bannerName,
  secondLine: secondLine ?? _secondLine,
  bannerImage: bannerImage ?? _bannerImage,
  bannerImageResponsive: bannerImageResponsive ?? _bannerImageResponsive,
  bannerType: bannerType ?? _bannerType,
  bannerOrder: bannerOrder ?? _bannerOrder,
  bannerUrl: bannerUrl ?? _bannerUrl,
  bannerStatus: bannerStatus ?? _bannerStatus,
  createdOn: createdOn ?? _createdOn,
  updatedOn: updatedOn ?? _updatedOn,
  updatedBy: updatedBy ?? _updatedBy,
  createdBy: createdBy ?? _createdBy,
);
  String? get bannerId => _bannerId;
  String? get bannerName => _bannerName;
  String? get secondLine => _secondLine;
  String? get bannerImage => _bannerImage;
  String? get bannerImageResponsive => _bannerImageResponsive;
  String? get bannerType => _bannerType;
  String? get bannerOrder => _bannerOrder;
  String? get bannerUrl => _bannerUrl;
  String? get bannerStatus => _bannerStatus;
  String? get createdOn => _createdOn;
  String? get updatedOn => _updatedOn;
  String? get updatedBy => _updatedBy;
  String? get createdBy => _createdBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['banner_id'] = _bannerId;
    map['banner_name'] = _bannerName;
    map['second_line'] = _secondLine;
    map['banner_image'] = _bannerImage;
    map['banner_image_responsive'] = _bannerImageResponsive;
    map['banner_type'] = _bannerType;
    map['banner_order'] = _bannerOrder;
    map['banner_url'] = _bannerUrl;
    map['banner_status'] = _bannerStatus;
    map['created_on'] = _createdOn;
    map['updated_on'] = _updatedOn;
    map['updated_by'] = _updatedBy;
    map['created_by'] = _createdBy;
    return map;
  }

}