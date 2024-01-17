import 'dart:convert';
/// about : [{"id":"1","ab_title":"About Us","ab_content":"\nWe are delighted to introduce Zain Art, a renowned firm located at XXI/152 Corrazone, KUSAT P.O., Pin 682022, Kalamassery, Kerala. With a passion for creativity and a commitment to excellence, we are engaged in the business of providing exceptional wall arts and custom-made furniture.</p>\n\nAt Zain Art, we specialize in curating a wide range of exquisite wall arts that breathe life into your living spaces. Our collection includes high-quality wall frames, Titanium-coated Stainless Steel wall decors, and captivating wooden decors such as Arabic Calligraphy. We also offer elegant wall clocks, eye-catching showpieces, and other decorative items of premium quality.</p>\n\nWhat sets us apart is our dedication to craftsmanship and attention to detail. Each piece is carefully designed and crafted to ensure it reflects your unique taste and style. Whether you seek a contemporary or traditional aesthetic, our products are thoughtfully created to enhance the ambiance of your home or office.</p>\n\nAdditionally, we take pride in our ability to fulfill custom-made furniture requests. Our skilled artisans work closely with clients to bring their visions to life, delivering tailor-made furniture that is both functional and visually stunning.</p>\n\nDiscover the transformative power of exceptional wall arts and custom-made furniture with Zain Art. Visit our Demo-room opposite to Ernakulam Civil Station Kakkanad or browse our online catalog to explore our exquisite collection.</p>","ab_banner":"169764429827.jpg","ab_status":"1","updated_by":"1","updated_on":"1697644298"}]

Aboutmodel aboutmodelFromJson(String str) => Aboutmodel.fromJson(json.decode(str));
String aboutmodelToJson(Aboutmodel data) => json.encode(data.toJson());
class Aboutmodel {
  Aboutmodel({
      List<About>? about,}){
    _about = about;
}

  Aboutmodel.fromJson(dynamic json) {
    if (json['about'] != null) {
      _about = [];
      json['about'].forEach((v) {
        _about?.add(About.fromJson(v));
      });
    }
  }
  List<About>? _about;
Aboutmodel copyWith({  List<About>? about,
}) => Aboutmodel(  about: about ?? _about,
);
  List<About>? get about => _about;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_about != null) {
      map['about'] = _about?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "1"
/// ab_title : "About Us"
/// ab_content : "\nWe are delighted to introduce Zain Art, a renowned firm located at XXI/152 Corrazone, KUSAT P.O., Pin 682022, Kalamassery, Kerala. With a passion for creativity and a commitment to excellence, we are engaged in the business of providing exceptional wall arts and custom-made furniture.</p>\n\nAt Zain Art, we specialize in curating a wide range of exquisite wall arts that breathe life into your living spaces. Our collection includes high-quality wall frames, Titanium-coated Stainless Steel wall decors, and captivating wooden decors such as Arabic Calligraphy. We also offer elegant wall clocks, eye-catching showpieces, and other decorative items of premium quality.</p>\n\nWhat sets us apart is our dedication to craftsmanship and attention to detail. Each piece is carefully designed and crafted to ensure it reflects your unique taste and style. Whether you seek a contemporary or traditional aesthetic, our products are thoughtfully created to enhance the ambiance of your home or office.</p>\n\nAdditionally, we take pride in our ability to fulfill custom-made furniture requests. Our skilled artisans work closely with clients to bring their visions to life, delivering tailor-made furniture that is both functional and visually stunning.</p>\n\nDiscover the transformative power of exceptional wall arts and custom-made furniture with Zain Art. Visit our Demo-room opposite to Ernakulam Civil Station Kakkanad or browse our online catalog to explore our exquisite collection.</p>"
/// ab_banner : "169764429827.jpg"
/// ab_status : "1"
/// updated_by : "1"
/// updated_on : "1697644298"

About aboutFromJson(String str) => About.fromJson(json.decode(str));
String aboutToJson(About data) => json.encode(data.toJson());
class About {
  About({
      String? id, 
      String? abTitle, 
      String? abContent, 
      String? abBanner, 
      String? abStatus, 
      String? updatedBy, 
      String? updatedOn,}){
    _id = id;
    _abTitle = abTitle;
    _abContent = abContent;
    _abBanner = abBanner;
    _abStatus = abStatus;
    _updatedBy = updatedBy;
    _updatedOn = updatedOn;
}

  About.fromJson(dynamic json) {
    _id = json['id'];
    _abTitle = json['ab_title'];
    _abContent = json['ab_content'];
    _abBanner = json['ab_banner'];
    _abStatus = json['ab_status'];
    _updatedBy = json['updated_by'];
    _updatedOn = json['updated_on'];
  }
  String? _id;
  String? _abTitle;
  String? _abContent;
  String? _abBanner;
  String? _abStatus;
  String? _updatedBy;
  String? _updatedOn;
About copyWith({  String? id,
  String? abTitle,
  String? abContent,
  String? abBanner,
  String? abStatus,
  String? updatedBy,
  String? updatedOn,
}) => About(  id: id ?? _id,
  abTitle: abTitle ?? _abTitle,
  abContent: abContent ?? _abContent,
  abBanner: abBanner ?? _abBanner,
  abStatus: abStatus ?? _abStatus,
  updatedBy: updatedBy ?? _updatedBy,
  updatedOn: updatedOn ?? _updatedOn,
);
  String? get id => _id;
  String? get abTitle => _abTitle;
  String? get abContent => _abContent;
  String? get abBanner => _abBanner;
  String? get abStatus => _abStatus;
  String? get updatedBy => _updatedBy;
  String? get updatedOn => _updatedOn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['ab_title'] = _abTitle;
    map['ab_content'] = _abContent;
    map['ab_banner'] = _abBanner;
    map['ab_status'] = _abStatus;
    map['updated_by'] = _updatedBy;
    map['updated_on'] = _updatedOn;
    return map;
  }

}