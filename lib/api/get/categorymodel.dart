import 'dart:convert';
/// category_id : "1"
/// category_name : "Premium"
/// meta_title : ""
/// meta_description : ""
/// category_name_arabic : ""
/// parent_id : "0"
/// subparent_id : "0"
/// category_display_order : "2"
/// category_image : "https://ecom.laurelss.com/uploads/category/169704371146.webp"
/// category_banner : ""
/// category_banner_arabic : ""
/// banner_url : ""
/// header_img : ""
/// description : ""
/// set_as_top : "1"
/// set_as_home : "0"
/// featured : "0"
/// keywords : null
/// category_status : "1"
/// created_on : "1693482994"
/// updated_on : "1697043711"
/// updated_by : "1"
/// home_status : "0"
/// footer_content : null

Categorymodel categorymodelFromJson(String str) => Categorymodel.fromJson(json.decode(str));
String categorymodelToJson(Categorymodel data) => json.encode(data.toJson());
class Categorymodel {
  Categorymodel({
      String? categoryId, 
      String? categoryName, 
      String? metaTitle, 
      String? metaDescription, 
      String? categoryNameArabic, 
      String? parentId, 
      String? subparentId, 
      String? categoryDisplayOrder, 
      String? categoryImage, 
      String? categoryBanner, 
      String? categoryBannerArabic, 
      String? bannerUrl, 
      String? headerImg, 
      String? description, 
      String? setAsTop, 
      String? setAsHome, 
      String? featured, 
      dynamic keywords, 
      String? categoryStatus, 
      String? createdOn, 
      String? updatedOn, 
      String? updatedBy, 
      String? homeStatus, 
      dynamic footerContent,}){
    _categoryId = categoryId;
    _categoryName = categoryName;
    _metaTitle = metaTitle;
    _metaDescription = metaDescription;
    _categoryNameArabic = categoryNameArabic;
    _parentId = parentId;
    _subparentId = subparentId;
    _categoryDisplayOrder = categoryDisplayOrder;
    _categoryImage = categoryImage;
    _categoryBanner = categoryBanner;
    _categoryBannerArabic = categoryBannerArabic;
    _bannerUrl = bannerUrl;
    _headerImg = headerImg;
    _description = description;
    _setAsTop = setAsTop;
    _setAsHome = setAsHome;
    _featured = featured;
    _keywords = keywords;
    _categoryStatus = categoryStatus;
    _createdOn = createdOn;
    _updatedOn = updatedOn;
    _updatedBy = updatedBy;
    _homeStatus = homeStatus;
    _footerContent = footerContent;
}

  Categorymodel.fromJson(dynamic json) {
    _categoryId = json['category_id'];
    _categoryName = json['category_name'];
    _metaTitle = json['meta_title'];
    _metaDescription = json['meta_description'];
    _categoryNameArabic = json['category_name_arabic'];
    _parentId = json['parent_id'];
    _subparentId = json['subparent_id'];
    _categoryDisplayOrder = json['category_display_order'];
    _categoryImage = json['category_image'];
    _categoryBanner = json['category_banner'];
    _categoryBannerArabic = json['category_banner_arabic'];
    _bannerUrl = json['banner_url'];
    _headerImg = json['header_img'];
    _description = json['description'];
    _setAsTop = json['set_as_top'];
    _setAsHome = json['set_as_home'];
    _featured = json['featured'];
    _keywords = json['keywords'];
    _categoryStatus = json['category_status'];
    _createdOn = json['created_on'];
    _updatedOn = json['updated_on'];
    _updatedBy = json['updated_by'];
    _homeStatus = json['home_status'];
    _footerContent = json['footer_content'];
  }
  String? _categoryId;
  String? _categoryName;
  String? _metaTitle;
  String? _metaDescription;
  String? _categoryNameArabic;
  String? _parentId;
  String? _subparentId;
  String? _categoryDisplayOrder;
  String? _categoryImage;
  String? _categoryBanner;
  String? _categoryBannerArabic;
  String? _bannerUrl;
  String? _headerImg;
  String? _description;
  String? _setAsTop;
  String? _setAsHome;
  String? _featured;
  dynamic _keywords;
  String? _categoryStatus;
  String? _createdOn;
  String? _updatedOn;
  String? _updatedBy;
  String? _homeStatus;
  dynamic _footerContent;
Categorymodel copyWith({  String? categoryId,
  String? categoryName,
  String? metaTitle,
  String? metaDescription,
  String? categoryNameArabic,
  String? parentId,
  String? subparentId,
  String? categoryDisplayOrder,
  String? categoryImage,
  String? categoryBanner,
  String? categoryBannerArabic,
  String? bannerUrl,
  String? headerImg,
  String? description,
  String? setAsTop,
  String? setAsHome,
  String? featured,
  dynamic keywords,
  String? categoryStatus,
  String? createdOn,
  String? updatedOn,
  String? updatedBy,
  String? homeStatus,
  dynamic footerContent,
}) => Categorymodel(  categoryId: categoryId ?? _categoryId,
  categoryName: categoryName ?? _categoryName,
  metaTitle: metaTitle ?? _metaTitle,
  metaDescription: metaDescription ?? _metaDescription,
  categoryNameArabic: categoryNameArabic ?? _categoryNameArabic,
  parentId: parentId ?? _parentId,
  subparentId: subparentId ?? _subparentId,
  categoryDisplayOrder: categoryDisplayOrder ?? _categoryDisplayOrder,
  categoryImage: categoryImage ?? _categoryImage,
  categoryBanner: categoryBanner ?? _categoryBanner,
  categoryBannerArabic: categoryBannerArabic ?? _categoryBannerArabic,
  bannerUrl: bannerUrl ?? _bannerUrl,
  headerImg: headerImg ?? _headerImg,
  description: description ?? _description,
  setAsTop: setAsTop ?? _setAsTop,
  setAsHome: setAsHome ?? _setAsHome,
  featured: featured ?? _featured,
  keywords: keywords ?? _keywords,
  categoryStatus: categoryStatus ?? _categoryStatus,
  createdOn: createdOn ?? _createdOn,
  updatedOn: updatedOn ?? _updatedOn,
  updatedBy: updatedBy ?? _updatedBy,
  homeStatus: homeStatus ?? _homeStatus,
  footerContent: footerContent ?? _footerContent,
);
  String? get categoryId => _categoryId;
  String? get categoryName => _categoryName;
  String? get metaTitle => _metaTitle;
  String? get metaDescription => _metaDescription;
  String? get categoryNameArabic => _categoryNameArabic;
  String? get parentId => _parentId;
  String? get subparentId => _subparentId;
  String? get categoryDisplayOrder => _categoryDisplayOrder;
  String? get categoryImage => _categoryImage;
  String? get categoryBanner => _categoryBanner;
  String? get categoryBannerArabic => _categoryBannerArabic;
  String? get bannerUrl => _bannerUrl;
  String? get headerImg => _headerImg;
  String? get description => _description;
  String? get setAsTop => _setAsTop;
  String? get setAsHome => _setAsHome;
  String? get featured => _featured;
  dynamic get keywords => _keywords;
  String? get categoryStatus => _categoryStatus;
  String? get createdOn => _createdOn;
  String? get updatedOn => _updatedOn;
  String? get updatedBy => _updatedBy;
  String? get homeStatus => _homeStatus;
  dynamic get footerContent => _footerContent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category_id'] = _categoryId;
    map['category_name'] = _categoryName;
    map['meta_title'] = _metaTitle;
    map['meta_description'] = _metaDescription;
    map['category_name_arabic'] = _categoryNameArabic;
    map['parent_id'] = _parentId;
    map['subparent_id'] = _subparentId;
    map['category_display_order'] = _categoryDisplayOrder;
    map['category_image'] = _categoryImage;
    map['category_banner'] = _categoryBanner;
    map['category_banner_arabic'] = _categoryBannerArabic;
    map['banner_url'] = _bannerUrl;
    map['header_img'] = _headerImg;
    map['description'] = _description;
    map['set_as_top'] = _setAsTop;
    map['set_as_home'] = _setAsHome;
    map['featured'] = _featured;
    map['keywords'] = _keywords;
    map['category_status'] = _categoryStatus;
    map['created_on'] = _createdOn;
    map['updated_on'] = _updatedOn;
    map['updated_by'] = _updatedBy;
    map['home_status'] = _homeStatus;
    map['footer_content'] = _footerContent;
    return map;
  }

}