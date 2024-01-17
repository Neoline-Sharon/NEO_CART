// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Categorywiseproductmodel welcomeFromJson(String str) => Categorywiseproductmodel.fromJson(json.decode(str));

String welcomeToJson(Categorywiseproductmodel data) => json.encode(data.toJson());

class Categorywiseproductmodel {
  int status;
  List<Productwise> productwise;
  int count;

  Categorywiseproductmodel({
    required this.status,
    required this.productwise,
    required this.count,
  });

  factory Categorywiseproductmodel.fromJson(Map<String, dynamic> json) => Categorywiseproductmodel(
    status: json["status"],
    productwise: List<Productwise>.from(json["productwise"].map((x) => Productwise.fromJson(x))),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "productwise": List<dynamic>.from(productwise.map((x) => x.toJson())),
    "count": count,
  };
}

class Productwise {
  String productId;
  String productName;
  String mrp;
  String sellingPrice;
  String quantity;
  String urlName;
  String urlSlug;
  String stockId;
  String categoryid;
  dynamic offerId;
  dynamic offerStatus;
  dynamic offDiscountType;
  dynamic offerDiscount;
  String userQty;
  String isWishlist;
  String cartDetailsId;
  String wishlistDetailsId;
  String orderCount;
  List<dynamic> varients;
  List<Stockss> stockss;
  int starCount;
  String productImage;
  String mrpp;
  String sellp;

  Productwise({
    required this.productId,
    required this.productName,
    required this.mrp,
    required this.sellingPrice,
    required this.quantity,
    required this.urlName,
    required this.urlSlug,
    required this.stockId,
    required this.categoryid,
    required this.offerId,
    required this.offerStatus,
    required this.offDiscountType,
    required this.offerDiscount,
    required this.userQty,
    required this.isWishlist,
    required this.cartDetailsId,
    required this.wishlistDetailsId,
    required this.orderCount,
    required this.varients,
    required this.stockss,
    required this.starCount,
    required this.productImage,
    required this.mrpp,
    required this.sellp,
  });

  factory Productwise.fromJson(Map<String, dynamic> json) => Productwise(
    productId: json["product_id"],
    productName: json["product_name"],
    mrp: json["mrp"],
    sellingPrice: json["selling_price"],
    quantity: json["quantity"],
    urlName: json["url_name"],
    urlSlug: json["url_slug"],
    stockId: json["stock_id"],
    categoryid: json["categoryid"],
    offerId: json["offer_id"],
    offerStatus: json["offer_status"],
    offDiscountType: json["off_discount_type"],
    offerDiscount: json["offer_discount"],
    userQty: json["user_qty"],
    isWishlist: json["is_wishlist"],
    cartDetailsId: json["cart_details_id"],
    wishlistDetailsId: json["wishlist_details_id"],
    orderCount: json["order_count"],
    varients: List<dynamic>.from(json["varients"].map((x) => x)),
    stockss: List<Stockss>.from(json["stockss"].map((x) => Stockss.fromJson(x))),
    starCount: json["star_count"],
    productImage: json["product_image"],
    mrpp: json["mrpp"],
    sellp: json["sellp"],
  );

  Map<String, dynamic> toJson() => {
    "product_id": productId,
    "product_name": productName,
    "mrp": mrp,
    "selling_price": sellingPrice,
    "quantity": quantity,
    "url_name": urlName,
    "url_slug": urlSlug,
    "stock_id": stockId,
    "categoryid": categoryid,
    "offer_id": offerId,
    "offer_status": offerStatus,
    "off_discount_type": offDiscountType,
    "offer_discount": offerDiscount,
    "user_qty": userQty,
    "is_wishlist": isWishlist,
    "cart_details_id": cartDetailsId,
    "wishlist_details_id": wishlistDetailsId,
    "order_count": orderCount,
    "varients": List<dynamic>.from(varients.map((x) => x)),
    "stockss": List<dynamic>.from(stockss.map((x) => x.toJson())),
    "star_count": starCount,
    "product_image": productImage,
    "mrpp": mrpp,
    "sellp": sellp,
  };
}

class Stockss {
  String stockId;
  String productVarientId;
  String varientName;

  Stockss({
    required this.stockId,
    required this.productVarientId,
    required this.varientName,
  });

  factory Stockss.fromJson(Map<String, dynamic> json) => Stockss(
    stockId: json["stock_id"],
    productVarientId: json["product_varient_id"],
    varientName: json["varient_name"],
  );

  Map<String, dynamic> toJson() => {
    "stock_id": stockId,
    "product_varient_id": productVarientId,
    "varient_name": varientName,
  };
}
