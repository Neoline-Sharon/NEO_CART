import 'dart:convert';
/// cart : [{"cart_id":"109","cart_count":"4","cart_amnt":"11408","details":[{"cart_details_id":"459","cart_id":"109","stock_id":"1618","quantity":"11","product_name":"De Marques Accento UNISEX","item_quantity":"1","item_price":"11.000","selling_price":"11.000","item_offer_price":"11","item_total":"11","item_offer_total":"11","coupon_id":"0","wamount":"0","wid":"0","installation":"0","url_slug":"earbuds/de-marques-accento-unisex","shipping_time":"","product_image":null,"product_varient_id":"417","product_id":"282","varient_id":"3","varient_name":"14","varient_status":"1","created_by":"","created_at":"","updated_on":"","updated_by":"0","material":"0","size":"0","colour":"0","weight":null,"dimensions":null,"color":null,"gender":null,"product_type":"1"}]}]
/// cart_count : 4
/// status : 200

Shopemodel shopemodelFromJson(String str) => Shopemodel.fromJson(json.decode(str));
String shopemodelToJson(Shopemodel data) => json.encode(data.toJson());
class Shopemodel {
  Shopemodel({
      List<Cart>? cart, 
      num? cartCount, 
      num? status,}){
    _cart = cart;
    _cartCount = cartCount;
    _status = status;
}

  Shopemodel.fromJson(dynamic json) {
    if (json['cart'] != null) {
      _cart = [];
      json['cart'].forEach((v) {
        _cart?.add(Cart.fromJson(v));
      });
    }
    _cartCount = json['cart_count'];
    _status = json['status'];
  }
  List<Cart>? _cart;
  num? _cartCount;
  num? _status;
Shopemodel copyWith({  List<Cart>? cart,
  num? cartCount,
  num? status,
}) => Shopemodel(  cart: cart ?? _cart,
  cartCount: cartCount ?? _cartCount,
  status: status ?? _status,
);
  List<Cart>? get cart => _cart;
  num? get cartCount => _cartCount;
  num? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_cart != null) {
      map['cart'] = _cart?.map((v) => v.toJson()).toList();
    }
    map['cart_count'] = _cartCount;
    map['status'] = _status;
    return map;
  }

}

/// cart_id : "109"
/// cart_count : "4"
/// cart_amnt : "11408"
/// details : [{"cart_details_id":"459","cart_id":"109","stock_id":"1618","quantity":"11","product_name":"De Marques Accento UNISEX","item_quantity":"1","item_price":"11.000","selling_price":"11.000","item_offer_price":"11","item_total":"11","item_offer_total":"11","coupon_id":"0","wamount":"0","wid":"0","installation":"0","url_slug":"earbuds/de-marques-accento-unisex","shipping_time":"","product_image":null,"product_varient_id":"417","product_id":"282","varient_id":"3","varient_name":"14","varient_status":"1","created_by":"","created_at":"","updated_on":"","updated_by":"0","material":"0","size":"0","colour":"0","weight":null,"dimensions":null,"color":null,"gender":null,"product_type":"1"}]

Cart cartFromJson(String str) => Cart.fromJson(json.decode(str));
String cartToJson(Cart data) => json.encode(data.toJson());
class Cart {
  Cart({
      String? cartId, 
      String? cartCount, 
      String? cartAmnt, 
      List<Details>? details,}){
    _cartId = cartId;
    _cartCount = cartCount;
    _cartAmnt = cartAmnt;
    _details = details;
}

  Cart.fromJson(dynamic json) {
    _cartId = json['cart_id'];
    _cartCount = json['cart_count'];
    _cartAmnt = json['cart_amnt'];
    if (json['details'] != null) {
      _details = [];
      json['details'].forEach((v) {
        _details?.add(Details.fromJson(v));
      });
    }
  }
  String? _cartId;
  String? _cartCount;
  String? _cartAmnt;
  List<Details>? _details;
Cart copyWith({  String? cartId,
  String? cartCount,
  String? cartAmnt,
  List<Details>? details,
}) => Cart(  cartId: cartId ?? _cartId,
  cartCount: cartCount ?? _cartCount,
  cartAmnt: cartAmnt ?? _cartAmnt,
  details: details ?? _details,
);
  String? get cartId => _cartId;
  String? get cartCount => _cartCount;
  String? get cartAmnt => _cartAmnt;
  List<Details>? get details => _details;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cart_id'] = _cartId;
    map['cart_count'] = _cartCount;
    map['cart_amnt'] = _cartAmnt;
    if (_details != null) {
      map['details'] = _details?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// cart_details_id : "459"
/// cart_id : "109"
/// stock_id : "1618"
/// quantity : "11"
/// product_name : "De Marques Accento UNISEX"
/// item_quantity : "1"
/// item_price : "11.000"
/// selling_price : "11.000"
/// item_offer_price : "11"
/// item_total : "11"
/// item_offer_total : "11"
/// coupon_id : "0"
/// wamount : "0"
/// wid : "0"
/// installation : "0"
/// url_slug : "earbuds/de-marques-accento-unisex"
/// shipping_time : ""
/// product_image : null
/// product_varient_id : "417"
/// product_id : "282"
/// varient_id : "3"
/// varient_name : "14"
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

Details detailsFromJson(String str) => Details.fromJson(json.decode(str));
String detailsToJson(Details data) => json.encode(data.toJson());
class Details {
  Details({
      String? cartDetailsId, 
      String? cartId, 
      String? stockId, 
      String? quantity, 
      String? productName, 
      String? itemQuantity, 
      String? itemPrice, 
      String? sellingPrice, 
      String? itemOfferPrice, 
      String? itemTotal, 
      String? itemOfferTotal, 
      String? couponId, 
      String? wamount, 
      String? wid, 
      String? installation, 
      String? urlSlug, 
      String? shippingTime, 
      dynamic productImage, 
      String? productVarientId, 
      String? productId, 
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
      String? productType,}){
    _cartDetailsId = cartDetailsId;
    _cartId = cartId;
    _stockId = stockId;
    _quantity = quantity;
    _productName = productName;
    _itemQuantity = itemQuantity;
    _itemPrice = itemPrice;
    _sellingPrice = sellingPrice;
    _itemOfferPrice = itemOfferPrice;
    _itemTotal = itemTotal;
    _itemOfferTotal = itemOfferTotal;
    _couponId = couponId;
    _wamount = wamount;
    _wid = wid;
    _installation = installation;
    _urlSlug = urlSlug;
    _shippingTime = shippingTime;
    _productImage = productImage;
    _productVarientId = productVarientId;
    _productId = productId;
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
}

  Details.fromJson(dynamic json) {
    _cartDetailsId = json['cart_details_id'];
    _cartId = json['cart_id'];
    _stockId = json['stock_id'];
    _quantity = json['quantity'];
    _productName = json['product_name'];
    _itemQuantity = json['item_quantity'];
    _itemPrice = json['item_price'];
    _sellingPrice = json['selling_price'];
    _itemOfferPrice = json['item_offer_price'];
    _itemTotal = json['item_total'];
    _itemOfferTotal = json['item_offer_total'];
    _couponId = json['coupon_id'];
    _wamount = json['wamount'];
    _wid = json['wid'];
    _installation = json['installation'];
    _urlSlug = json['url_slug'];
    _shippingTime = json['shipping_time'];
    _productImage = json['product_image'];
    _productVarientId = json['product_varient_id'];
    _productId = json['product_id'];
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
  }
  String? _cartDetailsId;
  String? _cartId;
  String? _stockId;
  String? _quantity;
  String? _productName;
  String? _itemQuantity;
  String? _itemPrice;
  String? _sellingPrice;
  String? _itemOfferPrice;
  String? _itemTotal;
  String? _itemOfferTotal;
  String? _couponId;
  String? _wamount;
  String? _wid;
  String? _installation;
  String? _urlSlug;
  String? _shippingTime;
  dynamic _productImage;
  String? _productVarientId;
  String? _productId;
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
Details copyWith({  String? cartDetailsId,
  String? cartId,
  String? stockId,
  String? quantity,
  String? productName,
  String? itemQuantity,
  String? itemPrice,
  String? sellingPrice,
  String? itemOfferPrice,
  String? itemTotal,
  String? itemOfferTotal,
  String? couponId,
  String? wamount,
  String? wid,
  String? installation,
  String? urlSlug,
  String? shippingTime,
  dynamic productImage,
  String? productVarientId,
  String? productId,
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
}) => Details(  cartDetailsId: cartDetailsId ?? _cartDetailsId,
  cartId: cartId ?? _cartId,
  stockId: stockId ?? _stockId,
  quantity: quantity ?? _quantity,
  productName: productName ?? _productName,
  itemQuantity: itemQuantity ?? _itemQuantity,
  itemPrice: itemPrice ?? _itemPrice,
  sellingPrice: sellingPrice ?? _sellingPrice,
  itemOfferPrice: itemOfferPrice ?? _itemOfferPrice,
  itemTotal: itemTotal ?? _itemTotal,
  itemOfferTotal: itemOfferTotal ?? _itemOfferTotal,
  couponId: couponId ?? _couponId,
  wamount: wamount ?? _wamount,
  wid: wid ?? _wid,
  installation: installation ?? _installation,
  urlSlug: urlSlug ?? _urlSlug,
  shippingTime: shippingTime ?? _shippingTime,
  productImage: productImage ?? _productImage,
  productVarientId: productVarientId ?? _productVarientId,
  productId: productId ?? _productId,
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
);
  String? get cartDetailsId => _cartDetailsId;
  String? get cartId => _cartId;
  String? get stockId => _stockId;
  String? get quantity => _quantity;
  String? get productName => _productName;
  String? get itemQuantity => _itemQuantity;
  String? get itemPrice => _itemPrice;
  String? get sellingPrice => _sellingPrice;
  String? get itemOfferPrice => _itemOfferPrice;
  String? get itemTotal => _itemTotal;
  String? get itemOfferTotal => _itemOfferTotal;
  String? get couponId => _couponId;
  String? get wamount => _wamount;
  String? get wid => _wid;
  String? get installation => _installation;
  String? get urlSlug => _urlSlug;
  String? get shippingTime => _shippingTime;
  dynamic get productImage => _productImage;
  String? get productVarientId => _productVarientId;
  String? get productId => _productId;
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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cart_details_id'] = _cartDetailsId;
    map['cart_id'] = _cartId;
    map['stock_id'] = _stockId;
    map['quantity'] = _quantity;
    map['product_name'] = _productName;
    map['item_quantity'] = _itemQuantity;
    map['item_price'] = _itemPrice;
    map['selling_price'] = _sellingPrice;
    map['item_offer_price'] = _itemOfferPrice;
    map['item_total'] = _itemTotal;
    map['item_offer_total'] = _itemOfferTotal;
    map['coupon_id'] = _couponId;
    map['wamount'] = _wamount;
    map['wid'] = _wid;
    map['installation'] = _installation;
    map['url_slug'] = _urlSlug;
    map['shipping_time'] = _shippingTime;
    map['product_image'] = _productImage;
    map['product_varient_id'] = _productVarientId;
    map['product_id'] = _productId;
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
    return map;
  }

}