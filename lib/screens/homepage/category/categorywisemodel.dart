import 'dart:convert';
/// product_id : "9"
/// product_name : "Rolex"
/// mrp : "100.000"
/// selling_price : "10.000"
/// quantity : "10"
/// url_name : "rolex"
/// url_slug : "premium/rolex"
/// stock_id : "1249"
/// categoryid : "1"
/// offer_id : null
/// offer_status : null
/// off_discount_type : null
/// offer_discount : null
/// user_qty : "0"
/// is_wishlist : "0"
/// cart_details_id : "0"
/// wishlist_details_id : "0"
/// order_count : "5"
/// varients : []
/// stockss : [{"stock_id":"1249","product_varient_id":"40","varient_name":"KIDS"}]
/// star_count : 0
/// product_image : "https://ecom.laurelss.com/uploads/demo.webp"
/// mrpp : "100.000"
/// sellp : "10.000"

Categorywisemodel categorywisemodelFromJson(String str) => Categorywisemodel.fromJson(json.decode(str));
String categorywisemodelToJson(Categorywisemodel data) => json.encode(data.toJson());
class Categorywisemodel {
  Categorywisemodel({
      String? productId, 
      String? productName, 
      String? mrp, 
      String? sellingPrice, 
      String? quantity, 
      String? urlName, 
      String? urlSlug, 
      String? stockId, 
      String? categoryid, 
      dynamic offerId, 
      dynamic offerStatus, 
      dynamic offDiscountType, 
      dynamic offerDiscount, 
      String? userQty, 
      String? isWishlist, 
      String? cartDetailsId, 
      String? wishlistDetailsId, 
      String? orderCount, 
      List<dynamic>? varients, 
      List<Stockss>? stockss, 
      num? starCount, 
      String? productImage, 
      String? mrpp, 
      String? sellp,}){
    _productId = productId;
    _productName = productName;
    _mrp = mrp;
    _sellingPrice = sellingPrice;
    _quantity = quantity;
    _urlName = urlName;
    _urlSlug = urlSlug;
    _stockId = stockId;
    _categoryid = categoryid;
    _offerId = offerId;
    _offerStatus = offerStatus;
    _offDiscountType = offDiscountType;
    _offerDiscount = offerDiscount;
    _userQty = userQty;
    _isWishlist = isWishlist;
    _cartDetailsId = cartDetailsId;
    _wishlistDetailsId = wishlistDetailsId;
    _orderCount = orderCount;
    _varients = varients;
    _stockss = stockss;
    _starCount = starCount;
    _productImage = productImage;
    _mrpp = mrpp;
    _sellp = sellp;
}

  Categorywisemodel.fromJson(dynamic json) {
    _productId = json['product_id'];
    _productName = json['product_name'];
    _mrp = json['mrp'];
    _sellingPrice = json['selling_price'];
    _quantity = json['quantity'];
    _urlName = json['url_name'];
    _urlSlug = json['url_slug'];
    _stockId = json['stock_id'];
    _categoryid = json['categoryid'];
    _offerId = json['offer_id'];
    _offerStatus = json['offer_status'];
    _offDiscountType = json['off_discount_type'];
    _offerDiscount = json['offer_discount'];
    _userQty = json['user_qty'];
    _isWishlist = json['is_wishlist'];
    _cartDetailsId = json['cart_details_id'];
    _wishlistDetailsId = json['wishlist_details_id'];
    _orderCount = json['order_count'];
    // if (json['varients'] != null) {
    //   _varients = [];
    //   json['varients'].forEach((v) {
    //     _varients?.add(Dynamic.fromJson(v));
    //   });
    // }
    if (json['stockss'] != null) {
      _stockss = [];
      json['stockss'].forEach((v) {
        _stockss?.add(Stockss.fromJson(v));
      });
    }
    _starCount = json['star_count'];
    _productImage = json['product_image'];
    _mrpp = json['mrpp'];
    _sellp = json['sellp'];
  }
  String? _productId;
  String? _productName;
  String? _mrp;
  String? _sellingPrice;
  String? _quantity;
  String? _urlName;
  String? _urlSlug;
  String? _stockId;
  String? _categoryid;
  dynamic _offerId;
  dynamic _offerStatus;
  dynamic _offDiscountType;
  dynamic _offerDiscount;
  String? _userQty;
  String? _isWishlist;
  String? _cartDetailsId;
  String? _wishlistDetailsId;
  String? _orderCount;
  List<dynamic>? _varients;
  List<Stockss>? _stockss;
  num? _starCount;
  String? _productImage;
  String? _mrpp;
  String? _sellp;
Categorywisemodel copyWith({  String? productId,
  String? productName,
  String? mrp,
  String? sellingPrice,
  String? quantity,
  String? urlName,
  String? urlSlug,
  String? stockId,
  String? categoryid,
  dynamic offerId,
  dynamic offerStatus,
  dynamic offDiscountType,
  dynamic offerDiscount,
  String? userQty,
  String? isWishlist,
  String? cartDetailsId,
  String? wishlistDetailsId,
  String? orderCount,
  List<dynamic>? varients,
  List<Stockss>? stockss,
  num? starCount,
  String? productImage,
  String? mrpp,
  String? sellp,
}) => Categorywisemodel(  productId: productId ?? _productId,
  productName: productName ?? _productName,
  mrp: mrp ?? _mrp,
  sellingPrice: sellingPrice ?? _sellingPrice,
  quantity: quantity ?? _quantity,
  urlName: urlName ?? _urlName,
  urlSlug: urlSlug ?? _urlSlug,
  stockId: stockId ?? _stockId,
  categoryid: categoryid ?? _categoryid,
  offerId: offerId ?? _offerId,
  offerStatus: offerStatus ?? _offerStatus,
  offDiscountType: offDiscountType ?? _offDiscountType,
  offerDiscount: offerDiscount ?? _offerDiscount,
  userQty: userQty ?? _userQty,
  isWishlist: isWishlist ?? _isWishlist,
  cartDetailsId: cartDetailsId ?? _cartDetailsId,
  wishlistDetailsId: wishlistDetailsId ?? _wishlistDetailsId,
  orderCount: orderCount ?? _orderCount,
  varients: varients ?? _varients,
  stockss: stockss ?? _stockss,
  starCount: starCount ?? _starCount,
  productImage: productImage ?? _productImage,
  mrpp: mrpp ?? _mrpp,
  sellp: sellp ?? _sellp,
);
  String? get productId => _productId;
  String? get productName => _productName;
  String? get mrp => _mrp;
  String? get sellingPrice => _sellingPrice;
  String? get quantity => _quantity;
  String? get urlName => _urlName;
  String? get urlSlug => _urlSlug;
  String? get stockId => _stockId;
  String? get categoryid => _categoryid;
  dynamic get offerId => _offerId;
  dynamic get offerStatus => _offerStatus;
  dynamic get offDiscountType => _offDiscountType;
  dynamic get offerDiscount => _offerDiscount;
  String? get userQty => _userQty;
  String? get isWishlist => _isWishlist;
  String? get cartDetailsId => _cartDetailsId;
  String? get wishlistDetailsId => _wishlistDetailsId;
  String? get orderCount => _orderCount;
  List<dynamic>? get varients => _varients;
  List<Stockss>? get stockss => _stockss;
  num? get starCount => _starCount;
  String? get productImage => _productImage;
  String? get mrpp => _mrpp;
  String? get sellp => _sellp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['product_id'] = _productId;
    map['product_name'] = _productName;
    map['mrp'] = _mrp;
    map['selling_price'] = _sellingPrice;
    map['quantity'] = _quantity;
    map['url_name'] = _urlName;
    map['url_slug'] = _urlSlug;
    map['stock_id'] = _stockId;
    map['categoryid'] = _categoryid;
    map['offer_id'] = _offerId;
    map['offer_status'] = _offerStatus;
    map['off_discount_type'] = _offDiscountType;
    map['offer_discount'] = _offerDiscount;
    map['user_qty'] = _userQty;
    map['is_wishlist'] = _isWishlist;
    map['cart_details_id'] = _cartDetailsId;
    map['wishlist_details_id'] = _wishlistDetailsId;
    map['order_count'] = _orderCount;
    if (_varients != null) {
      map['varients'] = _varients?.map((v) => v.toJson()).toList();
    }
    if (_stockss != null) {
      map['stockss'] = _stockss?.map((v) => v.toJson()).toList();
    }
    map['star_count'] = _starCount;
    map['product_image'] = _productImage;
    map['mrpp'] = _mrpp;
    map['sellp'] = _sellp;
    return map;
  }

}

/// stock_id : "1249"
/// product_varient_id : "40"
/// varient_name : "KIDS"

Stockss stockssFromJson(String str) => Stockss.fromJson(json.decode(str));
String stockssToJson(Stockss data) => json.encode(data.toJson());
class Stockss {
  Stockss({
      String? stockId, 
      String? productVarientId, 
      String? varientName,}){
    _stockId = stockId;
    _productVarientId = productVarientId;
    _varientName = varientName;
}

  Stockss.fromJson(dynamic json) {
    _stockId = json['stock_id'];
    _productVarientId = json['product_varient_id'];
    _varientName = json['varient_name'];
  }
  String? _stockId;
  String? _productVarientId;
  String? _varientName;
Stockss copyWith({  String? stockId,
  String? productVarientId,
  String? varientName,
}) => Stockss(  stockId: stockId ?? _stockId,
  productVarientId: productVarientId ?? _productVarientId,
  varientName: varientName ?? _varientName,
);
  String? get stockId => _stockId;
  String? get productVarientId => _productVarientId;
  String? get varientName => _varientName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['stock_id'] = _stockId;
    map['product_varient_id'] = _productVarientId;
    map['varient_name'] = _varientName;
    return map;
  }

}