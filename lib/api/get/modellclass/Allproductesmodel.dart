import 'dart:convert';
/// product_id : "645"
/// category_id : "0"
/// subcategory_id : "0"
/// product_unit : ""
/// product_name : "Z-Drum Wireless Speakers"
/// brand_id : "0"
/// product_description : "EC62"
/// product_tags : "1"
/// refundable : "1"
/// skucode : ""
/// barcode : ""
/// tax_type : "0"
/// tax_percent : "0"
/// product_status : "1"
/// features : null
/// meta_title : ""
/// meta_description : ""
/// meta_keywords : ""
/// meta_image : ""
/// url_slug : "https://ecom.laurelss.com/speakers/z-drum-wireless-speakers"
/// url_name : "z-drum-wireless-speakers"
/// colourss : "0"
/// product_video : ""
/// video_type : "0"
/// video_link : ""
/// product_pdf : ""
/// shipping_status : "0"
/// quantity_warning : "0"
/// created_by : "1"
/// featured_status : "0"
/// cash_on_delivery : "0"
/// todays_deal : "0"
/// offer_id : null
/// shipping_time : ""
/// special_date_start : ""
/// special_date_end : ""
/// special_discount : "0"
/// discount_type : "0"
/// product_name_arabic : ""
/// product_description_arabic : ""
/// features_arabic : ""
/// mrp_arabic : ""
/// selling_price_arabic : ""
/// quantity_arabic : ""
/// updated_on : ""
/// updated_by : "0"
/// created_on : "1706591015"
/// installation_sts : ""
/// recommended_age : ""
/// dimension : ""
/// product_type : "1"
/// premium_status : "0"
/// best_seller : null
/// on_seller : null
/// top_products : "0"
/// stock_id : "2220"
/// mrp : "4999.000"
/// selling_price : "1799.000"
/// quantity : "100"
/// categoryid : "10"
/// offer_status : null
/// off_discount_type : null
/// offer_discount : null
/// off_start_date : null
/// off_end_date : null
/// user_qty : "0"
/// is_wishlist : "1"
/// cart_details_id : "0"
/// wishlist_details_id : "140"
/// order_count : "1"
/// stockss : [{"stock_id":"2220","product_varient_id":"1019","varient_name":"BLACK"}]
/// varients : [{"product_varient_id":"1019","product_id":"645","varient_id":"2","varient_name":"3","varient_status":"1","created_by":"","created_at":"","updated_on":"","updated_by":"0","material":"0","size":"0","colour":"0","weight":null,"dimensions":null,"color":null,"gender":null,"parent":"COLOR","value":"BLACK"}]
/// star_count : 0
/// product_image : "https://ecom.laurelss.com/uploads/products/Z_Drum_Wireless_Speakers01.webp"
/// mrpp : "4999.000"
/// sellp : "1799.000"
/// isproductcliked : false
/// percentage : "65%"

Allproductesmodel allproductesmodelFromJson(String str) => Allproductesmodel.fromJson(json.decode(str));
String allproductesmodelToJson(Allproductesmodel data) => json.encode(data.toJson());
class Allproductesmodel {
  Allproductesmodel({
      String? productId, 
      String? categoryId, 
      String? subcategoryId, 
      String? productUnit, 
      String? productName, 
      String? brandId, 
      String? productDescription, 
      String? productTags, 
      String? refundable, 
      String? skucode, 
      String? barcode, 
      String? taxType, 
      String? taxPercent, 
      String? productStatus, 
      dynamic features, 
      String? metaTitle, 
      String? metaDescription, 
      String? metaKeywords, 
      String? metaImage, 
      String? urlSlug, 
      String? urlName, 
      String? colourss, 
      String? productVideo, 
      String? videoType, 
      String? videoLink, 
      String? productPdf, 
      String? shippingStatus, 
      String? quantityWarning, 
      String? createdBy, 
      String? featuredStatus, 
      String? cashOnDelivery, 
      String? todaysDeal, 
      dynamic offerId, 
      String? shippingTime, 
      String? specialDateStart, 
      String? specialDateEnd, 
      String? specialDiscount, 
      String? discountType, 
      String? productNameArabic, 
      String? productDescriptionArabic, 
      String? featuresArabic, 
      String? mrpArabic, 
      String? sellingPriceArabic, 
      String? quantityArabic, 
      String? updatedOn, 
      String? updatedBy, 
      String? createdOn, 
      String? installationSts, 
      String? recommendedAge, 
      String? dimension, 
      String? productType, 
      String? premiumStatus, 
      dynamic bestSeller, 
      dynamic onSeller, 
      String? topProducts, 
      String? stockId, 
      String? mrp, 
      String? sellingPrice, 
      String? quantity, 
      String? categoryid, 
      dynamic offerStatus, 
      dynamic offDiscountType, 
      dynamic offerDiscount, 
      dynamic offStartDate, 
      dynamic offEndDate, 
      String? userQty, 
      String? isWishlist, 
      String? cartDetailsId, 
      String? wishlistDetailsId, 
      String? orderCount, 
      List<Stockss>? stockss, 
      List<Varients>? varients, 
      num? starCount, 
      String? productImage, 
      String? mrpp, 
      String? sellp, 
      bool? isproductcliked, 
      String? percentage,}){
    _productId = productId;
    _categoryId = categoryId;
    _subcategoryId = subcategoryId;
    _productUnit = productUnit;
    _productName = productName;
    _brandId = brandId;
    _productDescription = productDescription;
    _productTags = productTags;
    _refundable = refundable;
    _skucode = skucode;
    _barcode = barcode;
    _taxType = taxType;
    _taxPercent = taxPercent;
    _productStatus = productStatus;
    _features = features;
    _metaTitle = metaTitle;
    _metaDescription = metaDescription;
    _metaKeywords = metaKeywords;
    _metaImage = metaImage;
    _urlSlug = urlSlug;
    _urlName = urlName;
    _colourss = colourss;
    _productVideo = productVideo;
    _videoType = videoType;
    _videoLink = videoLink;
    _productPdf = productPdf;
    _shippingStatus = shippingStatus;
    _quantityWarning = quantityWarning;
    _createdBy = createdBy;
    _featuredStatus = featuredStatus;
    _cashOnDelivery = cashOnDelivery;
    _todaysDeal = todaysDeal;
    _offerId = offerId;
    _shippingTime = shippingTime;
    _specialDateStart = specialDateStart;
    _specialDateEnd = specialDateEnd;
    _specialDiscount = specialDiscount;
    _discountType = discountType;
    _productNameArabic = productNameArabic;
    _productDescriptionArabic = productDescriptionArabic;
    _featuresArabic = featuresArabic;
    _mrpArabic = mrpArabic;
    _sellingPriceArabic = sellingPriceArabic;
    _quantityArabic = quantityArabic;
    _updatedOn = updatedOn;
    _updatedBy = updatedBy;
    _createdOn = createdOn;
    _installationSts = installationSts;
    _recommendedAge = recommendedAge;
    _dimension = dimension;
    _productType = productType;
    _premiumStatus = premiumStatus;
    _bestSeller = bestSeller;
    _onSeller = onSeller;
    _topProducts = topProducts;
    _stockId = stockId;
    _mrp = mrp;
    _sellingPrice = sellingPrice;
    _quantity = quantity;
    _categoryid = categoryid;
    _offerStatus = offerStatus;
    _offDiscountType = offDiscountType;
    _offerDiscount = offerDiscount;
    _offStartDate = offStartDate;
    _offEndDate = offEndDate;
    _userQty = userQty;
    _isWishlist = isWishlist;
    _cartDetailsId = cartDetailsId;
    _wishlistDetailsId = wishlistDetailsId;
    _orderCount = orderCount;
    _stockss = stockss;
    _varients = varients;
    _starCount = starCount;
    _productImage = productImage;
    _mrpp = mrpp;
    _sellp = sellp;
    _isproductcliked = isproductcliked;
    _percentage = percentage;
}

  Allproductesmodel.fromJson(dynamic json) {
    _productId = json['product_id'];
    _categoryId = json['category_id'];
    _subcategoryId = json['subcategory_id'];
    _productUnit = json['product_unit'];
    _productName = json['product_name'];
    _brandId = json['brand_id'];
    _productDescription = json['product_description'];
    _productTags = json['product_tags'];
    _refundable = json['refundable'];
    _skucode = json['skucode'];
    _barcode = json['barcode'];
    _taxType = json['tax_type'];
    _taxPercent = json['tax_percent'];
    _productStatus = json['product_status'];
    _features = json['features'];
    _metaTitle = json['meta_title'];
    _metaDescription = json['meta_description'];
    _metaKeywords = json['meta_keywords'];
    _metaImage = json['meta_image'];
    _urlSlug = json['url_slug'];
    _urlName = json['url_name'];
    _colourss = json['colourss'];
    _productVideo = json['product_video'];
    _videoType = json['video_type'];
    _videoLink = json['video_link'];
    _productPdf = json['product_pdf'];
    _shippingStatus = json['shipping_status'];
    _quantityWarning = json['quantity_warning'];
    _createdBy = json['created_by'];
    _featuredStatus = json['featured_status'];
    _cashOnDelivery = json['cash_on_delivery'];
    _todaysDeal = json['todays_deal'];
    _offerId = json['offer_id'];
    _shippingTime = json['shipping_time'];
    _specialDateStart = json['special_date_start'];
    _specialDateEnd = json['special_date_end'];
    _specialDiscount = json['special_discount'];
    _discountType = json['discount_type'];
    _productNameArabic = json['product_name_arabic'];
    _productDescriptionArabic = json['product_description_arabic'];
    _featuresArabic = json['features_arabic'];
    _mrpArabic = json['mrp_arabic'];
    _sellingPriceArabic = json['selling_price_arabic'];
    _quantityArabic = json['quantity_arabic'];
    _updatedOn = json['updated_on'];
    _updatedBy = json['updated_by'];
    _createdOn = json['created_on'];
    _installationSts = json['installation_sts'];
    _recommendedAge = json['recommended_age'];
    _dimension = json['dimension'];
    _productType = json['product_type'];
    _premiumStatus = json['premium_status'];
    _bestSeller = json['best_seller'];
    _onSeller = json['on_seller'];
    _topProducts = json['top_products'];
    _stockId = json['stock_id'];
    _mrp = json['mrp'];
    _sellingPrice = json['selling_price'];
    _quantity = json['quantity'];
    _categoryid = json['categoryid'];
    _offerStatus = json['offer_status'];
    _offDiscountType = json['off_discount_type'];
    _offerDiscount = json['offer_discount'];
    _offStartDate = json['off_start_date'];
    _offEndDate = json['off_end_date'];
    _userQty = json['user_qty'];
    _isWishlist = json['is_wishlist'];
    _cartDetailsId = json['cart_details_id'];
    _wishlistDetailsId = json['wishlist_details_id'];
    _orderCount = json['order_count'];
    if (json['stockss'] != null) {
      _stockss = [];
      json['stockss'].forEach((v) {
        _stockss?.add(Stockss.fromJson(v));
      });
    }
    if (json['varients'] != null) {
      _varients = [];
      json['varients'].forEach((v) {
        _varients?.add(Varients.fromJson(v));
      });
    }
    _starCount = json['star_count'];
    _productImage = json['product_image'];
    _mrpp = json['mrpp'];
    _sellp = json['sellp'];
    _isproductcliked = json['isproductcliked'];
    _percentage = json['percentage'];
  }
  String? _productId;
  String? _categoryId;
  String? _subcategoryId;
  String? _productUnit;
  String? _productName;
  String? _brandId;
  String? _productDescription;
  String? _productTags;
  String? _refundable;
  String? _skucode;
  String? _barcode;
  String? _taxType;
  String? _taxPercent;
  String? _productStatus;
  dynamic _features;
  String? _metaTitle;
  String? _metaDescription;
  String? _metaKeywords;
  String? _metaImage;
  String? _urlSlug;
  String? _urlName;
  String? _colourss;
  String? _productVideo;
  String? _videoType;
  String? _videoLink;
  String? _productPdf;
  String? _shippingStatus;
  String? _quantityWarning;
  String? _createdBy;
  String? _featuredStatus;
  String? _cashOnDelivery;
  String? _todaysDeal;
  dynamic _offerId;
  String? _shippingTime;
  String? _specialDateStart;
  String? _specialDateEnd;
  String? _specialDiscount;
  String? _discountType;
  String? _productNameArabic;
  String? _productDescriptionArabic;
  String? _featuresArabic;
  String? _mrpArabic;
  String? _sellingPriceArabic;
  String? _quantityArabic;
  String? _updatedOn;
  String? _updatedBy;
  String? _createdOn;
  String? _installationSts;
  String? _recommendedAge;
  String? _dimension;
  String? _productType;
  String? _premiumStatus;
  dynamic _bestSeller;
  dynamic _onSeller;
  String? _topProducts;
  String? _stockId;
  String? _mrp;
  String? _sellingPrice;
  String? _quantity;
  String? _categoryid;
  dynamic _offerStatus;
  dynamic _offDiscountType;
  dynamic _offerDiscount;
  dynamic _offStartDate;
  dynamic _offEndDate;
  String? _userQty;
  String? _isWishlist;
  String? _cartDetailsId;
  String? _wishlistDetailsId;
  String? _orderCount;
  List<Stockss>? _stockss;
  List<Varients>? _varients;
  num? _starCount;
  String? _productImage;
  String? _mrpp;
  String? _sellp;
  bool? _isproductcliked;
  String? _percentage;
Allproductesmodel copyWith({  String? productId,
  String? categoryId,
  String? subcategoryId,
  String? productUnit,
  String? productName,
  String? brandId,
  String? productDescription,
  String? productTags,
  String? refundable,
  String? skucode,
  String? barcode,
  String? taxType,
  String? taxPercent,
  String? productStatus,
  dynamic features,
  String? metaTitle,
  String? metaDescription,
  String? metaKeywords,
  String? metaImage,
  String? urlSlug,
  String? urlName,
  String? colourss,
  String? productVideo,
  String? videoType,
  String? videoLink,
  String? productPdf,
  String? shippingStatus,
  String? quantityWarning,
  String? createdBy,
  String? featuredStatus,
  String? cashOnDelivery,
  String? todaysDeal,
  dynamic offerId,
  String? shippingTime,
  String? specialDateStart,
  String? specialDateEnd,
  String? specialDiscount,
  String? discountType,
  String? productNameArabic,
  String? productDescriptionArabic,
  String? featuresArabic,
  String? mrpArabic,
  String? sellingPriceArabic,
  String? quantityArabic,
  String? updatedOn,
  String? updatedBy,
  String? createdOn,
  String? installationSts,
  String? recommendedAge,
  String? dimension,
  String? productType,
  String? premiumStatus,
  dynamic bestSeller,
  dynamic onSeller,
  String? topProducts,
  String? stockId,
  String? mrp,
  String? sellingPrice,
  String? quantity,
  String? categoryid,
  dynamic offerStatus,
  dynamic offDiscountType,
  dynamic offerDiscount,
  dynamic offStartDate,
  dynamic offEndDate,
  String? userQty,
  String? isWishlist,
  String? cartDetailsId,
  String? wishlistDetailsId,
  String? orderCount,
  List<Stockss>? stockss,
  List<Varients>? varients,
  num? starCount,
  String? productImage,
  String? mrpp,
  String? sellp,
  bool? isproductcliked,
  String? percentage,
}) => Allproductesmodel(  productId: productId ?? _productId,
  categoryId: categoryId ?? _categoryId,
  subcategoryId: subcategoryId ?? _subcategoryId,
  productUnit: productUnit ?? _productUnit,
  productName: productName ?? _productName,
  brandId: brandId ?? _brandId,
  productDescription: productDescription ?? _productDescription,
  productTags: productTags ?? _productTags,
  refundable: refundable ?? _refundable,
  skucode: skucode ?? _skucode,
  barcode: barcode ?? _barcode,
  taxType: taxType ?? _taxType,
  taxPercent: taxPercent ?? _taxPercent,
  productStatus: productStatus ?? _productStatus,
  features: features ?? _features,
  metaTitle: metaTitle ?? _metaTitle,
  metaDescription: metaDescription ?? _metaDescription,
  metaKeywords: metaKeywords ?? _metaKeywords,
  metaImage: metaImage ?? _metaImage,
  urlSlug: urlSlug ?? _urlSlug,
  urlName: urlName ?? _urlName,
  colourss: colourss ?? _colourss,
  productVideo: productVideo ?? _productVideo,
  videoType: videoType ?? _videoType,
  videoLink: videoLink ?? _videoLink,
  productPdf: productPdf ?? _productPdf,
  shippingStatus: shippingStatus ?? _shippingStatus,
  quantityWarning: quantityWarning ?? _quantityWarning,
  createdBy: createdBy ?? _createdBy,
  featuredStatus: featuredStatus ?? _featuredStatus,
  cashOnDelivery: cashOnDelivery ?? _cashOnDelivery,
  todaysDeal: todaysDeal ?? _todaysDeal,
  offerId: offerId ?? _offerId,
  shippingTime: shippingTime ?? _shippingTime,
  specialDateStart: specialDateStart ?? _specialDateStart,
  specialDateEnd: specialDateEnd ?? _specialDateEnd,
  specialDiscount: specialDiscount ?? _specialDiscount,
  discountType: discountType ?? _discountType,
  productNameArabic: productNameArabic ?? _productNameArabic,
  productDescriptionArabic: productDescriptionArabic ?? _productDescriptionArabic,
  featuresArabic: featuresArabic ?? _featuresArabic,
  mrpArabic: mrpArabic ?? _mrpArabic,
  sellingPriceArabic: sellingPriceArabic ?? _sellingPriceArabic,
  quantityArabic: quantityArabic ?? _quantityArabic,
  updatedOn: updatedOn ?? _updatedOn,
  updatedBy: updatedBy ?? _updatedBy,
  createdOn: createdOn ?? _createdOn,
  installationSts: installationSts ?? _installationSts,
  recommendedAge: recommendedAge ?? _recommendedAge,
  dimension: dimension ?? _dimension,
  productType: productType ?? _productType,
  premiumStatus: premiumStatus ?? _premiumStatus,
  bestSeller: bestSeller ?? _bestSeller,
  onSeller: onSeller ?? _onSeller,
  topProducts: topProducts ?? _topProducts,
  stockId: stockId ?? _stockId,
  mrp: mrp ?? _mrp,
  sellingPrice: sellingPrice ?? _sellingPrice,
  quantity: quantity ?? _quantity,
  categoryid: categoryid ?? _categoryid,
  offerStatus: offerStatus ?? _offerStatus,
  offDiscountType: offDiscountType ?? _offDiscountType,
  offerDiscount: offerDiscount ?? _offerDiscount,
  offStartDate: offStartDate ?? _offStartDate,
  offEndDate: offEndDate ?? _offEndDate,
  userQty: userQty ?? _userQty,
  isWishlist: isWishlist ?? _isWishlist,
  cartDetailsId: cartDetailsId ?? _cartDetailsId,
  wishlistDetailsId: wishlistDetailsId ?? _wishlistDetailsId,
  orderCount: orderCount ?? _orderCount,
  stockss: stockss ?? _stockss,
  varients: varients ?? _varients,
  starCount: starCount ?? _starCount,
  productImage: productImage ?? _productImage,
  mrpp: mrpp ?? _mrpp,
  sellp: sellp ?? _sellp,
  isproductcliked: isproductcliked ?? _isproductcliked,
  percentage: percentage ?? _percentage,
);
  String? get productId => _productId;
  String? get categoryId => _categoryId;
  String? get subcategoryId => _subcategoryId;
  String? get productUnit => _productUnit;
  String? get productName => _productName;
  String? get brandId => _brandId;
  String? get productDescription => _productDescription;
  String? get productTags => _productTags;
  String? get refundable => _refundable;
  String? get skucode => _skucode;
  String? get barcode => _barcode;
  String? get taxType => _taxType;
  String? get taxPercent => _taxPercent;
  String? get productStatus => _productStatus;
  dynamic get features => _features;
  String? get metaTitle => _metaTitle;
  String? get metaDescription => _metaDescription;
  String? get metaKeywords => _metaKeywords;
  String? get metaImage => _metaImage;
  String? get urlSlug => _urlSlug;
  String? get urlName => _urlName;
  String? get colourss => _colourss;
  String? get productVideo => _productVideo;
  String? get videoType => _videoType;
  String? get videoLink => _videoLink;
  String? get productPdf => _productPdf;
  String? get shippingStatus => _shippingStatus;
  String? get quantityWarning => _quantityWarning;
  String? get createdBy => _createdBy;
  String? get featuredStatus => _featuredStatus;
  String? get cashOnDelivery => _cashOnDelivery;
  String? get todaysDeal => _todaysDeal;
  dynamic get offerId => _offerId;
  String? get shippingTime => _shippingTime;
  String? get specialDateStart => _specialDateStart;
  String? get specialDateEnd => _specialDateEnd;
  String? get specialDiscount => _specialDiscount;
  String? get discountType => _discountType;
  String? get productNameArabic => _productNameArabic;
  String? get productDescriptionArabic => _productDescriptionArabic;
  String? get featuresArabic => _featuresArabic;
  String? get mrpArabic => _mrpArabic;
  String? get sellingPriceArabic => _sellingPriceArabic;
  String? get quantityArabic => _quantityArabic;
  String? get updatedOn => _updatedOn;
  String? get updatedBy => _updatedBy;
  String? get createdOn => _createdOn;
  String? get installationSts => _installationSts;
  String? get recommendedAge => _recommendedAge;
  String? get dimension => _dimension;
  String? get productType => _productType;
  String? get premiumStatus => _premiumStatus;
  dynamic get bestSeller => _bestSeller;
  dynamic get onSeller => _onSeller;
  String? get topProducts => _topProducts;
  String? get stockId => _stockId;
  String? get mrp => _mrp;
  String? get sellingPrice => _sellingPrice;
  String? get quantity => _quantity;
  String? get categoryid => _categoryid;
  dynamic get offerStatus => _offerStatus;
  dynamic get offDiscountType => _offDiscountType;
  dynamic get offerDiscount => _offerDiscount;
  dynamic get offStartDate => _offStartDate;
  dynamic get offEndDate => _offEndDate;
  String? get userQty => _userQty;
  String? get isWishlist => _isWishlist;
  String? get cartDetailsId => _cartDetailsId;
  String? get wishlistDetailsId => _wishlistDetailsId;
  String? get orderCount => _orderCount;
  List<Stockss>? get stockss => _stockss;
  List<Varients>? get varients => _varients;
  num? get starCount => _starCount;
  String? get productImage => _productImage;
  String? get mrpp => _mrpp;
  String? get sellp => _sellp;
  bool? get isproductcliked => _isproductcliked;
  String? get percentage => _percentage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['product_id'] = _productId;
    map['category_id'] = _categoryId;
    map['subcategory_id'] = _subcategoryId;
    map['product_unit'] = _productUnit;
    map['product_name'] = _productName;
    map['brand_id'] = _brandId;
    map['product_description'] = _productDescription;
    map['product_tags'] = _productTags;
    map['refundable'] = _refundable;
    map['skucode'] = _skucode;
    map['barcode'] = _barcode;
    map['tax_type'] = _taxType;
    map['tax_percent'] = _taxPercent;
    map['product_status'] = _productStatus;
    map['features'] = _features;
    map['meta_title'] = _metaTitle;
    map['meta_description'] = _metaDescription;
    map['meta_keywords'] = _metaKeywords;
    map['meta_image'] = _metaImage;
    map['url_slug'] = _urlSlug;
    map['url_name'] = _urlName;
    map['colourss'] = _colourss;
    map['product_video'] = _productVideo;
    map['video_type'] = _videoType;
    map['video_link'] = _videoLink;
    map['product_pdf'] = _productPdf;
    map['shipping_status'] = _shippingStatus;
    map['quantity_warning'] = _quantityWarning;
    map['created_by'] = _createdBy;
    map['featured_status'] = _featuredStatus;
    map['cash_on_delivery'] = _cashOnDelivery;
    map['todays_deal'] = _todaysDeal;
    map['offer_id'] = _offerId;
    map['shipping_time'] = _shippingTime;
    map['special_date_start'] = _specialDateStart;
    map['special_date_end'] = _specialDateEnd;
    map['special_discount'] = _specialDiscount;
    map['discount_type'] = _discountType;
    map['product_name_arabic'] = _productNameArabic;
    map['product_description_arabic'] = _productDescriptionArabic;
    map['features_arabic'] = _featuresArabic;
    map['mrp_arabic'] = _mrpArabic;
    map['selling_price_arabic'] = _sellingPriceArabic;
    map['quantity_arabic'] = _quantityArabic;
    map['updated_on'] = _updatedOn;
    map['updated_by'] = _updatedBy;
    map['created_on'] = _createdOn;
    map['installation_sts'] = _installationSts;
    map['recommended_age'] = _recommendedAge;
    map['dimension'] = _dimension;
    map['product_type'] = _productType;
    map['premium_status'] = _premiumStatus;
    map['best_seller'] = _bestSeller;
    map['on_seller'] = _onSeller;
    map['top_products'] = _topProducts;
    map['stock_id'] = _stockId;
    map['mrp'] = _mrp;
    map['selling_price'] = _sellingPrice;
    map['quantity'] = _quantity;
    map['categoryid'] = _categoryid;
    map['offer_status'] = _offerStatus;
    map['off_discount_type'] = _offDiscountType;
    map['offer_discount'] = _offerDiscount;
    map['off_start_date'] = _offStartDate;
    map['off_end_date'] = _offEndDate;
    map['user_qty'] = _userQty;
    map['is_wishlist'] = _isWishlist;
    map['cart_details_id'] = _cartDetailsId;
    map['wishlist_details_id'] = _wishlistDetailsId;
    map['order_count'] = _orderCount;
    if (_stockss != null) {
      map['stockss'] = _stockss?.map((v) => v.toJson()).toList();
    }
    if (_varients != null) {
      map['varients'] = _varients?.map((v) => v.toJson()).toList();
    }
    map['star_count'] = _starCount;
    map['product_image'] = _productImage;
    map['mrpp'] = _mrpp;
    map['sellp'] = _sellp;
    map['isproductcliked'] = _isproductcliked;
    map['percentage'] = _percentage;
    return map;
  }

}

/// product_varient_id : "1019"
/// product_id : "645"
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
/// parent : "COLOR"
/// value : "BLACK"

Varients varientsFromJson(String str) => Varients.fromJson(json.decode(str));
String varientsToJson(Varients data) => json.encode(data.toJson());
class Varients {
  Varients({
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
      String? parent, 
      String? value,}){
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
    _parent = parent;
    _value = value;
}

  Varients.fromJson(dynamic json) {
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
    _parent = json['parent'];
    _value = json['value'];
  }
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
  String? _parent;
  String? _value;
Varients copyWith({  String? productVarientId,
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
  String? parent,
  String? value,
}) => Varients(  productVarientId: productVarientId ?? _productVarientId,
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
  parent: parent ?? _parent,
  value: value ?? _value,
);
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
  String? get parent => _parent;
  String? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
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
    map['parent'] = _parent;
    map['value'] = _value;
    return map;
  }

}

/// stock_id : "2220"
/// product_varient_id : "1019"
/// varient_name : "BLACK"

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