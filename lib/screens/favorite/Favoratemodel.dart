import 'dart:convert';
/// wishlist_details_id : "94"
/// wishlist_id : "23"
/// product_id : "1825"
/// stock_id : "1825"
/// varient_quantity : "230"
/// product_name : "ADIDAS ORIGINALS Analog Watch - For Men AOST22565"
/// item_quantity : "1"
/// item_price : "12464.000"
/// selling_price : "11458.000"
/// item_offer_price : "11458"
/// item_total : "12464"
/// item_offer_total : "11458"
/// url_slug : "premium/adidas-originals-analog-watch---for-men-aost22565"
/// product_image : "adidaswatch_(1)_(1)3.webp"
/// user_qty : "0"

Favoratemodel favoratemodelFromJson(String str) => Favoratemodel.fromJson(json.decode(str));
String favoratemodelToJson(Favoratemodel data) => json.encode(data.toJson());
class Favoratemodel {
  Favoratemodel({
      String? wishlistDetailsId, 
      String? wishlistId, 
      String? productId, 
      String? stockId, 
      String? varientQuantity, 
      String? productName, 
      String? itemQuantity, 
      String? itemPrice, 
      String? sellingPrice, 
      String? itemOfferPrice, 
      String? itemTotal, 
      String? itemOfferTotal, 
      String? urlSlug, 
      String? productImage, 
      String? userQty,}){
    _wishlistDetailsId = wishlistDetailsId;
    _wishlistId = wishlistId;
    _productId = productId;
    _stockId = stockId;
    _varientQuantity = varientQuantity;
    _productName = productName;
    _itemQuantity = itemQuantity;
    _itemPrice = itemPrice;
    _sellingPrice = sellingPrice;
    _itemOfferPrice = itemOfferPrice;
    _itemTotal = itemTotal;
    _itemOfferTotal = itemOfferTotal;
    _urlSlug = urlSlug;
    _productImage = productImage;
    _userQty = userQty;
}

  Favoratemodel.fromJson(dynamic json) {
    _wishlistDetailsId = json['wishlist_details_id'];
    _wishlistId = json['wishlist_id'];
    _productId = json['product_id'];
    _stockId = json['stock_id'];
    _varientQuantity = json['varient_quantity'];
    _productName = json['product_name'];
    _itemQuantity = json['item_quantity'];
    _itemPrice = json['item_price'];
    _sellingPrice = json['selling_price'];
    _itemOfferPrice = json['item_offer_price'];
    _itemTotal = json['item_total'];
    _itemOfferTotal = json['item_offer_total'];
    _urlSlug = json['url_slug'];
    _productImage = json['product_image'];
    _userQty = json['user_qty'];
  }
  String? _wishlistDetailsId;
  String? _wishlistId;
  String? _productId;
  String? _stockId;
  String? _varientQuantity;
  String? _productName;
  String? _itemQuantity;
  String? _itemPrice;
  String? _sellingPrice;
  String? _itemOfferPrice;
  String? _itemTotal;
  String? _itemOfferTotal;
  String? _urlSlug;
  String? _productImage;
  String? _userQty;
Favoratemodel copyWith({  String? wishlistDetailsId,
  String? wishlistId,
  String? productId,
  String? stockId,
  String? varientQuantity,
  String? productName,
  String? itemQuantity,
  String? itemPrice,
  String? sellingPrice,
  String? itemOfferPrice,
  String? itemTotal,
  String? itemOfferTotal,
  String? urlSlug,
  String? productImage,
  String? userQty,
}) => Favoratemodel(  wishlistDetailsId: wishlistDetailsId ?? _wishlistDetailsId,
  wishlistId: wishlistId ?? _wishlistId,
  productId: productId ?? _productId,
  stockId: stockId ?? _stockId,
  varientQuantity: varientQuantity ?? _varientQuantity,
  productName: productName ?? _productName,
  itemQuantity: itemQuantity ?? _itemQuantity,
  itemPrice: itemPrice ?? _itemPrice,
  sellingPrice: sellingPrice ?? _sellingPrice,
  itemOfferPrice: itemOfferPrice ?? _itemOfferPrice,
  itemTotal: itemTotal ?? _itemTotal,
  itemOfferTotal: itemOfferTotal ?? _itemOfferTotal,
  urlSlug: urlSlug ?? _urlSlug,
  productImage: productImage ?? _productImage,
  userQty: userQty ?? _userQty,
);
  String? get wishlistDetailsId => _wishlistDetailsId;
  String? get wishlistId => _wishlistId;
  String? get productId => _productId;
  String? get stockId => _stockId;
  String? get varientQuantity => _varientQuantity;
  String? get productName => _productName;
  String? get itemQuantity => _itemQuantity;
  String? get itemPrice => _itemPrice;
  String? get sellingPrice => _sellingPrice;
  String? get itemOfferPrice => _itemOfferPrice;
  String? get itemTotal => _itemTotal;
  String? get itemOfferTotal => _itemOfferTotal;
  String? get urlSlug => _urlSlug;
  String? get productImage => _productImage;
  String? get userQty => _userQty;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['wishlist_details_id'] = _wishlistDetailsId;
    map['wishlist_id'] = _wishlistId;
    map['product_id'] = _productId;
    map['stock_id'] = _stockId;
    map['varient_quantity'] = _varientQuantity;
    map['product_name'] = _productName;
    map['item_quantity'] = _itemQuantity;
    map['item_price'] = _itemPrice;
    map['selling_price'] = _sellingPrice;
    map['item_offer_price'] = _itemOfferPrice;
    map['item_total'] = _itemTotal;
    map['item_offer_total'] = _itemOfferTotal;
    map['url_slug'] = _urlSlug;
    map['product_image'] = _productImage;
    map['user_qty'] = _userQty;
    return map;
  }

}