import 'dart:convert';
/// reviews : [{"rating_id":"34","product_id":"696","rating":"6","customer_id":"78","name":"sam","phone":"","email":"","review":"goodbadproduct","created_on":"1707410697","product_name":"Z-Drum Wireless Speakers","url_slug":"speakers/z-drum-wireless-speakers"}]

Reviews reviewsFromJson(String str) => Reviews.fromJson(json.decode(str));
String reviewsToJson(Reviews data) => json.encode(data.toJson());
class Reviews {
  Reviews({
      List<Reviews>? reviews,}){
    _reviews = reviews;
}

  Reviews.fromJson(dynamic json) {
    if (json['reviews'] != null) {
      _reviews = [];
      json['reviews'].forEach((v) {
        _reviews?.add(Reviews.fromJson(v));
      });
    }
  }
  List<Reviews>? _reviews;
Reviews copyWith({  List<Reviews>? reviews,
}) => Reviews(  reviews: reviews ?? _reviews,
);
  List<Reviews>? get reviews => _reviews;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_reviews != null) {
      map['reviews'] = _reviews?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// rating_id : "34"
/// product_id : "696"
/// rating : "6"
/// customer_id : "78"
/// name : "sam"
/// phone : ""
/// email : ""
/// review : "goodbadproduct"
/// created_on : "1707410697"
/// product_name : "Z-Drum Wireless Speakers"
/// url_slug : "speakers/z-drum-wireless-speakers"

Reviews reviewssFromJson(String str) => Reviews.fromJson(json.decode(str));
String reviewssToJson(Reviews data) => json.encode(data.toJson());
class Reviewss {
  Reviews({
      String? ratingId, 
      String? productId, 
      String? rating, 
      String? customerId, 
      String? name, 
      String? phone, 
      String? email, 
      String? review, 
      String? createdOn, 
      String? productName, 
      String? urlSlug,}){
    _ratingId = ratingId;
    _productId = productId;
    _rating = rating;
    _customerId = customerId;
    _name = name;
    _phone = phone;
    _email = email;
    _review = review;
    _createdOn = createdOn;
    _productName = productName;
    _urlSlug = urlSlug;
}

  Reviewss.fromJson(dynamic json) {
    _ratingId = json['rating_id'];
    _productId = json['product_id'];
    _rating = json['rating'];
    _customerId = json['customer_id'];
    _name = json['name'];
    _phone = json['phone'];
    _email = json['email'];
    _review = json['review'];
    _createdOn = json['created_on'];
    _productName = json['product_name'];
    _urlSlug = json['url_slug'];
  }
  String? _ratingId;
  String? _productId;
  String? _rating;
  String? _customerId;
  String? _name;
  String? _phone;
  String? _email;
  String? _review;
  String? _createdOn;
  String? _productName;
  String? _urlSlug;
Reviewss copyWith({  String? ratingId,
  String? productId,
  String? rating,
  String? customerId,
  String? name,
  String? phone,
  String? email,
  String? review,
  String? createdOn,
  String? productName,
  String? urlSlug,
}) => Reviews(  ratingId: ratingId ?? _ratingId,
  productId: productId ?? _productId,
  rating: rating ?? _rating,
  customerId: customerId ?? _customerId,
  name: name ?? _name,
  phone: phone ?? _phone,
  email: email ?? _email,
  review: review ?? _review,
  createdOn: createdOn ?? _createdOn,
  productName: productName ?? _productName,
  urlSlug: urlSlug ?? _urlSlug,
);
  String? get ratingId => _ratingId;
  String? get productId => _productId;
  String? get rating => _rating;
  String? get customerId => _customerId;
  String? get name => _name;
  String? get phone => _phone;
  String? get email => _email;
  String? get review => _review;
  String? get createdOn => _createdOn;
  String? get productName => _productName;
  String? get urlSlug => _urlSlug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rating_id'] = _ratingId;
    map['product_id'] = _productId;
    map['rating'] = _rating;
    map['customer_id'] = _customerId;
    map['name'] = _name;
    map['phone'] = _phone;
    map['email'] = _email;
    map['review'] = _review;
    map['created_on'] = _createdOn;
    map['product_name'] = _productName;
    map['url_slug'] = _urlSlug;
    return map;
  }

}