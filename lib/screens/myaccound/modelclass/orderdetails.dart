import 'dart:convert';
/// details : [{"detail_id":"392","product_id":"589","product_name":"Urban forest","product_quantity":"1","product_cost":"499","product_actual_cost":"999","product_discount":"500","product_total":"499","order_note":"","wid":"0","wamount":"0","installation_sts":"","product_varient_id":"947","varient_id":"2","varient_name":"3","varient_status":"1","created_by":"","created_at":"","updated_on":"","updated_by":"0","material":"0","size":"0","colour":"0","weight":null,"dimensions":null,"color":null,"gender":null,"product_type":"1","url_slug":"wallet/urban-forest","product_image":"URBAN_FOREST_Kyle_Black_Redwood.webp.webp"},{"detail_id":"393","product_id":"591","product_name":"Best cheap","product_quantity":"1","product_cost":"4499","product_actual_cost":"4999","product_discount":"500","product_total":"4499","order_note":"","wid":"0","wamount":"0","installation_sts":"","product_varient_id":"949","varient_id":"2","varient_name":"3","varient_status":"1","created_by":"","created_at":"","updated_on":"","updated_by":"0","material":"0","size":"0","colour":"0","weight":null,"dimensions":null,"color":null,"gender":null,"product_type":"1","url_slug":"speakers/best-cheap","product_image":"Best_cheap_Bluetooth_speakers_under_50_in_2023_-_SoundGuys011.webp.webp"},{"detail_id":"394","product_id":"593","product_name":"Marshall Middleton","product_quantity":"1","product_cost":"4499","product_actual_cost":"4999","product_discount":"500","product_total":"4499","order_note":"","wid":"0","wamount":"0","installation_sts":"","product_varient_id":"951","varient_id":"2","varient_name":"3","varient_status":"1","created_by":"","created_at":"","updated_on":"","updated_by":"0","material":"0","size":"0","colour":"0","weight":null,"dimensions":null,"color":null,"gender":null,"product_type":"1","url_slug":"speakers/marshall-middleton","product_image":"Marshall_Middleton_Portable_Bluetooth_Speaker.webp.webp"}]
/// status : 200

Orderdetails orderdetailsFromJson(String str) => Orderdetails.fromJson(json.decode(str));
String orderdetailsToJson(Orderdetails data) => json.encode(data.toJson());
class Orderdetails {
  Orderdetails({
      List<Details>? details, 
      num? status,}){
    _details = details;
    _status = status;
}

  Orderdetails.fromJson(dynamic json) {
    if (json['details'] != null) {
      _details = [];
      json['details'].forEach((v) {
        _details?.add(Details.fromJson(v));
      });
    }
    _status = json['status'];
  }
  List<Details>? _details;
  num? _status;
Orderdetails copyWith({  List<Details>? details,
  num? status,
}) => Orderdetails(  details: details ?? _details,
  status: status ?? _status,
);
  List<Details>? get details => _details;
  num? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_details != null) {
      map['details'] = _details?.map((v) => v.toJson()).toList();
    }
    map['status'] = _status;
    return map;
  }

}

/// detail_id : "392"
/// product_id : "589"
/// product_name : "Urban forest"
/// product_quantity : "1"
/// product_cost : "499"
/// product_actual_cost : "999"
/// product_discount : "500"
/// product_total : "499"
/// order_note : ""
/// wid : "0"
/// wamount : "0"
/// installation_sts : ""
/// product_varient_id : "947"
/// varient_id : "2"
/// varient_name : "3"
/// varient_status : "1"
/// created_by : ""
/// created_at : ""
/// updated_on : ""
/// updated_by : "0"
/// material : "0"
/// size : "0"
/// colour : "0"
/// weight : null
/// dimensions : null
/// color : null
/// gender : null
/// product_type : "1"
/// url_slug : "wallet/urban-forest"
/// product_image : "URBAN_FOREST_Kyle_Black_Redwood.webp.webp"

Details detailsFromJson(String str) => Details.fromJson(json.decode(str));
String detailsToJson(Details data) => json.encode(data.toJson());
class Details {
  Details({
      String? detailId, 
      String? productId, 
      String? productName, 
      String? productQuantity, 
      String? productCost, 
      String? productActualCost, 
      String? productDiscount, 
      String? productTotal, 
      String? orderNote, 
      String? wid, 
      String? wamount, 
      String? installationSts, 
      String? productVarientId, 
      String? varientId, 
      String? varientName, 
      String? varientStatus, 
      String? createdBy, 
      String? createdAt, 
      String? updatedOn, 
      String? updatedBy, 
      String? material, 
      String? size, 
      String? colour, 
      dynamic weight, 
      dynamic dimensions, 
      dynamic color, 
      dynamic gender, 
      String? productType, 
      String? urlSlug, 
      String? productImage,}){
    _detailId = detailId;
    _productId = productId;
    _productName = productName;
    _productQuantity = productQuantity;
    _productCost = productCost;
    _productActualCost = productActualCost;
    _productDiscount = productDiscount;
    _productTotal = productTotal;
    _orderNote = orderNote;
    _wid = wid;
    _wamount = wamount;
    _installationSts = installationSts;
    _productVarientId = productVarientId;
    _varientId = varientId;
    _varientName = varientName;
    _varientStatus = varientStatus;
    _createdBy = createdBy;
    _createdAt = createdAt;
    _updatedOn = updatedOn;
    _updatedBy = updatedBy;
    _material = material;
    _size = size;
    _colour = colour;
    _weight = weight;
    _dimensions = dimensions;
    _color = color;
    _gender = gender;
    _productType = productType;
    _urlSlug = urlSlug;
    _productImage = productImage;
}

  Details.fromJson(dynamic json) {
    _detailId = json['detail_id'];
    _productId = json['product_id'];
    _productName = json['product_name'];
    _productQuantity = json['product_quantity'];
    _productCost = json['product_cost'];
    _productActualCost = json['product_actual_cost'];
    _productDiscount = json['product_discount'];
    _productTotal = json['product_total'];
    _orderNote = json['order_note'];
    _wid = json['wid'];
    _wamount = json['wamount'];
    _installationSts = json['installation_sts'];
    _productVarientId = json['product_varient_id'];
    _varientId = json['varient_id'];
    _varientName = json['varient_name'];
    _varientStatus = json['varient_status'];
    _createdBy = json['created_by'];
    _createdAt = json['created_at'];
    _updatedOn = json['updated_on'];
    _updatedBy = json['updated_by'];
    _material = json['material'];
    _size = json['size'];
    _colour = json['colour'];
    _weight = json['weight'];
    _dimensions = json['dimensions'];
    _color = json['color'];
    _gender = json['gender'];
    _productType = json['product_type'];
    _urlSlug = json['url_slug'];
    _productImage = json['product_image'];
  }
  String? _detailId;
  String? _productId;
  String? _productName;
  String? _productQuantity;
  String? _productCost;
  String? _productActualCost;
  String? _productDiscount;
  String? _productTotal;
  String? _orderNote;
  String? _wid;
  String? _wamount;
  String? _installationSts;
  String? _productVarientId;
  String? _varientId;
  String? _varientName;
  String? _varientStatus;
  String? _createdBy;
  String? _createdAt;
  String? _updatedOn;
  String? _updatedBy;
  String? _material;
  String? _size;
  String? _colour;
  dynamic _weight;
  dynamic _dimensions;
  dynamic _color;
  dynamic _gender;
  String? _productType;
  String? _urlSlug;
  String? _productImage;
Details copyWith({  String? detailId,
  String? productId,
  String? productName,
  String? productQuantity,
  String? productCost,
  String? productActualCost,
  String? productDiscount,
  String? productTotal,
  String? orderNote,
  String? wid,
  String? wamount,
  String? installationSts,
  String? productVarientId,
  String? varientId,
  String? varientName,
  String? varientStatus,
  String? createdBy,
  String? createdAt,
  String? updatedOn,
  String? updatedBy,
  String? material,
  String? size,
  String? colour,
  dynamic weight,
  dynamic dimensions,
  dynamic color,
  dynamic gender,
  String? productType,
  String? urlSlug,
  String? productImage,
}) => Details(  detailId: detailId ?? _detailId,
  productId: productId ?? _productId,
  productName: productName ?? _productName,
  productQuantity: productQuantity ?? _productQuantity,
  productCost: productCost ?? _productCost,
  productActualCost: productActualCost ?? _productActualCost,
  productDiscount: productDiscount ?? _productDiscount,
  productTotal: productTotal ?? _productTotal,
  orderNote: orderNote ?? _orderNote,
  wid: wid ?? _wid,
  wamount: wamount ?? _wamount,
  installationSts: installationSts ?? _installationSts,
  productVarientId: productVarientId ?? _productVarientId,
  varientId: varientId ?? _varientId,
  varientName: varientName ?? _varientName,
  varientStatus: varientStatus ?? _varientStatus,
  createdBy: createdBy ?? _createdBy,
  createdAt: createdAt ?? _createdAt,
  updatedOn: updatedOn ?? _updatedOn,
  updatedBy: updatedBy ?? _updatedBy,
  material: material ?? _material,
  size: size ?? _size,
  colour: colour ?? _colour,
  weight: weight ?? _weight,
  dimensions: dimensions ?? _dimensions,
  color: color ?? _color,
  gender: gender ?? _gender,
  productType: productType ?? _productType,
  urlSlug: urlSlug ?? _urlSlug,
  productImage: productImage ?? _productImage,
);
  String? get detailId => _detailId;
  String? get productId => _productId;
  String? get productName => _productName;
  String? get productQuantity => _productQuantity;
  String? get productCost => _productCost;
  String? get productActualCost => _productActualCost;
  String? get productDiscount => _productDiscount;
  String? get productTotal => _productTotal;
  String? get orderNote => _orderNote;
  String? get wid => _wid;
  String? get wamount => _wamount;
  String? get installationSts => _installationSts;
  String? get productVarientId => _productVarientId;
  String? get varientId => _varientId;
  String? get varientName => _varientName;
  String? get varientStatus => _varientStatus;
  String? get createdBy => _createdBy;
  String? get createdAt => _createdAt;
  String? get updatedOn => _updatedOn;
  String? get updatedBy => _updatedBy;
  String? get material => _material;
  String? get size => _size;
  String? get colour => _colour;
  dynamic get weight => _weight;
  dynamic get dimensions => _dimensions;
  dynamic get color => _color;
  dynamic get gender => _gender;
  String? get productType => _productType;
  String? get urlSlug => _urlSlug;
  String? get productImage => _productImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['detail_id'] = _detailId;
    map['product_id'] = _productId;
    map['product_name'] = _productName;
    map['product_quantity'] = _productQuantity;
    map['product_cost'] = _productCost;
    map['product_actual_cost'] = _productActualCost;
    map['product_discount'] = _productDiscount;
    map['product_total'] = _productTotal;
    map['order_note'] = _orderNote;
    map['wid'] = _wid;
    map['wamount'] = _wamount;
    map['installation_sts'] = _installationSts;
    map['product_varient_id'] = _productVarientId;
    map['varient_id'] = _varientId;
    map['varient_name'] = _varientName;
    map['varient_status'] = _varientStatus;
    map['created_by'] = _createdBy;
    map['created_at'] = _createdAt;
    map['updated_on'] = _updatedOn;
    map['updated_by'] = _updatedBy;
    map['material'] = _material;
    map['size'] = _size;
    map['colour'] = _colour;
    map['weight'] = _weight;
    map['dimensions'] = _dimensions;
    map['color'] = _color;
    map['gender'] = _gender;
    map['product_type'] = _productType;
    map['url_slug'] = _urlSlug;
    map['product_image'] = _productImage;
    return map;
  }

}