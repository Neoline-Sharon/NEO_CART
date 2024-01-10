import 'dart:convert';
/// details : {"product_id":"2","product_name":"Wilcraft","product_description":"I8 Pro Max Smartwatch And Air Pods Pro Awesome Quality Combo Offer\r\n- I8 Pro Max Black Colour Smartwatch \r\n- AirPods Pro Awesome Quality\r\n- AirPods Pro Silicon Case Random Colour\r\nAirPods Pro Awesome Quality\r\n- Wireless Charging case\r\n- Original Lightning port\r\n- Calling feature working \r\n- Both sensors fully working \r\n- Sound pure bass performance \r\n- Single tap pause and play music\r\n- Double tap next music control\r\n- High Quality Sound Experience\r\n- Guaranteed 12 hours Battery Backup\r\n- With AirPods Pro Case\r\n- Apple Original Box With Extra Buds, Charging Cable And User Manual\r\n \r\n I8 Pro Max Smartwatch\r\n- Watch Size: 44 38 10.7 mm\r\n- Resolution: 240 240 Pixel\r\n- Bluetooth: Support 3.0, 4.0\r\n- Wireless Megnetic charger \r\n- Bluetooth to play music\r\n- Turn the wrist and bright screen\r\n- Various Dials -- 7 Different Faces\r\n- Heart rate blood pressure\r\nPlease don't compare this with original product quality items,this is a replica product. Don't expect high sound quality, Display quality and mic quality\r\n- Products with cash on delivery require an advance payment of ₹ 200. advance payment is required to avoid fraudulent order, We are getting a lot of fake order, so no other options \r\nWhen you receive our parcel dont forget to make video before you open the product must be clearly shown on the video when the video is taken, video should be taken close to the product. Video from a distance will not be accepted as evidence. So that we can replace products. In case u get a wrong product Or any damaged product. Our marking logo sticker was there in All products, so first check product completely, then u can remove this sticker. Our sticker was mandatory for replacement. \r\nWithout video no cut no pause clip you would not be able to claim or we will not replace any product or accept any kind of arguments\r\nThere are many scammers in the market and so we have clearly stated process in this guideline, exactly you have to follow it\r\nDemo video - https://youtu.be/Uut8ceATcRo ","url_slug":"backpack/wilcraft","mrp":"6999.000","selling_price":"1999.000","quantity":"100","stock_id":"1211","offer_id":null,"offer_status":null,"off_discount_type":null,"offer_discount":null,"off_start_date":null,"off_end_date":null,"product_image":"https://ecom.laurelss.com/uploads/products/WILDCARFT-01.webp","brand_name":null,"brand_icon":null,"user_qty":"0","is_wishlist":"0","cart_details_id":"0","wishlist_details_id":"0","order_count":"33","stockss":"{\"stock_id\":\"1211\",\"product_varient_id\":\"3\",\"varient_name\":\"BLACK\"},{\"stock_id\":\"1253\",\"product_varient_id\":\"44\",\"varient_name\":\"BLUE\"},","is_ordered":""}
/// status : 200
Productdetailmodel productdetailmodel = Productdetailmodel();

Productdetailmodel productdetailmodelFromJson(String str) => Productdetailmodel.fromJson(json.decode(str));
String productdetailmodelToJson(Productdetailmodel data) => json.encode(data.toJson());
class Productdetailmodel {
  Productdetailmodel({
      Details? details, 
      num? status,}){
    _details = details;
    _status = status;
}

  Productdetailmodel.fromJson(dynamic json) {
    _details = json['details'] != null ? Details.fromJson(json['details']) : null;
    _status = json['status'];
  }
  Details? _details;
  num? _status;
Productdetailmodel copyWith({  Details? details,
  num? status,
}) => Productdetailmodel(  details: details ?? _details,
  status: status ?? _status,
);
  Details? get details => _details;
  num? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_details != null) {
      map['details'] = _details?.toJson();
    }
    map['status'] = _status;
    return map;
  }

}

/// product_id : "2"
/// product_name : "Wilcraft"
/// product_description : "I8 Pro Max Smartwatch And Air Pods Pro Awesome Quality Combo Offer\r\n- I8 Pro Max Black Colour Smartwatch \r\n- AirPods Pro Awesome Quality\r\n- AirPods Pro Silicon Case Random Colour\r\nAirPods Pro Awesome Quality\r\n- Wireless Charging case\r\n- Original Lightning port\r\n- Calling feature working \r\n- Both sensors fully working \r\n- Sound pure bass performance \r\n- Single tap pause and play music\r\n- Double tap next music control\r\n- High Quality Sound Experience\r\n- Guaranteed 12 hours Battery Backup\r\n- With AirPods Pro Case\r\n- Apple Original Box With Extra Buds, Charging Cable And User Manual\r\n \r\n I8 Pro Max Smartwatch\r\n- Watch Size: 44 38 10.7 mm\r\n- Resolution: 240 240 Pixel\r\n- Bluetooth: Support 3.0, 4.0\r\n- Wireless Megnetic charger \r\n- Bluetooth to play music\r\n- Turn the wrist and bright screen\r\n- Various Dials -- 7 Different Faces\r\n- Heart rate blood pressure\r\nPlease don't compare this with original product quality items,this is a replica product. Don't expect high sound quality, Display quality and mic quality\r\n- Products with cash on delivery require an advance payment of ₹ 200. advance payment is required to avoid fraudulent order, We are getting a lot of fake order, so no other options \r\nWhen you receive our parcel dont forget to make video before you open the product must be clearly shown on the video when the video is taken, video should be taken close to the product. Video from a distance will not be accepted as evidence. So that we can replace products. In case u get a wrong product Or any damaged product. Our marking logo sticker was there in All products, so first check product completely, then u can remove this sticker. Our sticker was mandatory for replacement. \r\nWithout video no cut no pause clip you would not be able to claim or we will not replace any product or accept any kind of arguments\r\nThere are many scammers in the market and so we have clearly stated process in this guideline, exactly you have to follow it\r\nDemo video - https://youtu.be/Uut8ceATcRo "
/// url_slug : "backpack/wilcraft"
/// mrp : "6999.000"
/// selling_price : "1999.000"
/// quantity : "100"
/// stock_id : "1211"
/// offer_id : null
/// offer_status : null
/// off_discount_type : null
/// offer_discount : null
/// off_start_date : null
/// off_end_date : null
/// product_image : "https://ecom.laurelss.com/uploads/products/WILDCARFT-01.webp"
/// brand_name : null
/// brand_icon : null
/// user_qty : "0"
/// is_wishlist : "0"
/// cart_details_id : "0"
/// wishlist_details_id : "0"
/// order_count : "33"
/// stockss : "{\"stock_id\":\"1211\",\"product_varient_id\":\"3\",\"varient_name\":\"BLACK\"},{\"stock_id\":\"1253\",\"product_varient_id\":\"44\",\"varient_name\":\"BLUE\"},"
/// is_ordered : ""

Details detailsFromJson(String str) => Details.fromJson(json.decode(str));
String detailsToJson(Details data) => json.encode(data.toJson());
class Details {
  Details({
      String? productId, 
      String? productName, 
      String? productDescription, 
      String? urlSlug, 
      String? mrp, 
      String? sellingPrice, 
      String? quantity, 
      String? stockId, 
      dynamic offerId, 
      dynamic offerStatus, 
      dynamic offDiscountType, 
      dynamic offerDiscount, 
      dynamic offStartDate, 
      dynamic offEndDate, 
      String? productImage, 
      dynamic brandName, 
      dynamic brandIcon, 
      String? userQty, 
      String? isWishlist, 
      String? cartDetailsId, 
      String? wishlistDetailsId, 
      String? orderCount, 
      String? stockss, 
      String? isOrdered,}){
    _productId = productId;
    _productName = productName;
    _productDescription = productDescription;
    _urlSlug = urlSlug;
    _mrp = mrp;
    _sellingPrice = sellingPrice;
    _quantity = quantity;
    _stockId = stockId;
    _offerId = offerId;
    _offerStatus = offerStatus;
    _offDiscountType = offDiscountType;
    _offerDiscount = offerDiscount;
    _offStartDate = offStartDate;
    _offEndDate = offEndDate;
    _productImage = productImage;
    _brandName = brandName;
    _brandIcon = brandIcon;
    _userQty = userQty;
    _isWishlist = isWishlist;
    _cartDetailsId = cartDetailsId;
    _wishlistDetailsId = wishlistDetailsId;
    _orderCount = orderCount;
    _stockss = stockss;
    _isOrdered = isOrdered;
}

  Details.fromJson(dynamic json) {
    _productId = json['product_id'];
    _productName = json['product_name'];
    _productDescription = json['product_description'];
    _urlSlug = json['url_slug'];
    _mrp = json['mrp'];
    _sellingPrice = json['selling_price'];
    _quantity = json['quantity'];
    _stockId = json['stock_id'];
    _offerId = json['offer_id'];
    _offerStatus = json['offer_status'];
    _offDiscountType = json['off_discount_type'];
    _offerDiscount = json['offer_discount'];
    _offStartDate = json['off_start_date'];
    _offEndDate = json['off_end_date'];
    _productImage = json['product_image'];
    _brandName = json['brand_name'];
    _brandIcon = json['brand_icon'];
    _userQty = json['user_qty'];
    _isWishlist = json['is_wishlist'];
    _cartDetailsId = json['cart_details_id'];
    _wishlistDetailsId = json['wishlist_details_id'];
    _orderCount = json['order_count'];
    _stockss = json['stockss'];
    _isOrdered = json['is_ordered'];
  }
  String? _productId;
  String? _productName;
  String? _productDescription;
  String? _urlSlug;
  String? _mrp;
  String? _sellingPrice;
  String? _quantity;
  String? _stockId;
  dynamic _offerId;
  dynamic _offerStatus;
  dynamic _offDiscountType;
  dynamic _offerDiscount;
  dynamic _offStartDate;
  dynamic _offEndDate;
  String? _productImage;
  dynamic _brandName;
  dynamic _brandIcon;
  String? _userQty;
  String? _isWishlist;
  String? _cartDetailsId;
  String? _wishlistDetailsId;
  String? _orderCount;
  String? _stockss;
  String? _isOrdered;
Details copyWith({  String? productId,
  String? productName,
  String? productDescription,
  String? urlSlug,
  String? mrp,
  String? sellingPrice,
  String? quantity,
  String? stockId,
  dynamic offerId,
  dynamic offerStatus,
  dynamic offDiscountType,
  dynamic offerDiscount,
  dynamic offStartDate,
  dynamic offEndDate,
  String? productImage,
  dynamic brandName,
  dynamic brandIcon,
  String? userQty,
  String? isWishlist,
  String? cartDetailsId,
  String? wishlistDetailsId,
  String? orderCount,
  String? stockss,
  String? isOrdered,
}) => Details(  productId: productId ?? _productId,
  productName: productName ?? _productName,
  productDescription: productDescription ?? _productDescription,
  urlSlug: urlSlug ?? _urlSlug,
  mrp: mrp ?? _mrp,
  sellingPrice: sellingPrice ?? _sellingPrice,
  quantity: quantity ?? _quantity,
  stockId: stockId ?? _stockId,
  offerId: offerId ?? _offerId,
  offerStatus: offerStatus ?? _offerStatus,
  offDiscountType: offDiscountType ?? _offDiscountType,
  offerDiscount: offerDiscount ?? _offerDiscount,
  offStartDate: offStartDate ?? _offStartDate,
  offEndDate: offEndDate ?? _offEndDate,
  productImage: productImage ?? _productImage,
  brandName: brandName ?? _brandName,
  brandIcon: brandIcon ?? _brandIcon,
  userQty: userQty ?? _userQty,
  isWishlist: isWishlist ?? _isWishlist,
  cartDetailsId: cartDetailsId ?? _cartDetailsId,
  wishlistDetailsId: wishlistDetailsId ?? _wishlistDetailsId,
  orderCount: orderCount ?? _orderCount,
  stockss: stockss ?? _stockss,
  isOrdered: isOrdered ?? _isOrdered,
);
  String? get productId => _productId;
  String? get productName => _productName;
  String? get productDescription => _productDescription;
  String? get urlSlug => _urlSlug;
  String? get mrp => _mrp;
  String? get sellingPrice => _sellingPrice;
  String? get quantity => _quantity;
  String? get stockId => _stockId;
  dynamic get offerId => _offerId;
  dynamic get offerStatus => _offerStatus;
  dynamic get offDiscountType => _offDiscountType;
  dynamic get offerDiscount => _offerDiscount;
  dynamic get offStartDate => _offStartDate;
  dynamic get offEndDate => _offEndDate;
  String? get productImage => _productImage;
  dynamic get brandName => _brandName;
  dynamic get brandIcon => _brandIcon;
  String? get userQty => _userQty;
  String? get isWishlist => _isWishlist;
  String? get cartDetailsId => _cartDetailsId;
  String? get wishlistDetailsId => _wishlistDetailsId;
  String? get orderCount => _orderCount;
  String? get stockss => _stockss;
  String? get isOrdered => _isOrdered;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['product_id'] = _productId;
    map['product_name'] = _productName;
    map['product_description'] = _productDescription;
    map['url_slug'] = _urlSlug;
    map['mrp'] = _mrp;
    map['selling_price'] = _sellingPrice;
    map['quantity'] = _quantity;
    map['stock_id'] = _stockId;
    map['offer_id'] = _offerId;
    map['offer_status'] = _offerStatus;
    map['off_discount_type'] = _offDiscountType;
    map['offer_discount'] = _offerDiscount;
    map['off_start_date'] = _offStartDate;
    map['off_end_date'] = _offEndDate;
    map['product_image'] = _productImage;
    map['brand_name'] = _brandName;
    map['brand_icon'] = _brandIcon;
    map['user_qty'] = _userQty;
    map['is_wishlist'] = _isWishlist;
    map['cart_details_id'] = _cartDetailsId;
    map['wishlist_details_id'] = _wishlistDetailsId;
    map['order_count'] = _orderCount;
    map['stockss'] = _stockss;
    map['is_ordered'] = _isOrdered;
    return map;
  }

}