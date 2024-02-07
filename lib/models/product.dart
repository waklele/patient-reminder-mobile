class Product {
  int? _id;
  String? _title;
  String? _description;
  int? _price;
  double? _discountPercentage;
  double? _rating;
  int? _stock;
  String? _brand;
  String? _category;
  String? _thumbnail;
  List<String>? _images;

  Product(
      {int? id,
      String? title,
      String? description,
      int? price,
      double? discountPercentage,
      double? rating,
      int? stock,
      String? brand,
      String? category,
      String? thumbnail,
      List<String>? images}) {
    if (id != null) {
      _id = id;
    }
    if (title != null) {
      _title = title;
    }
    if (description != null) {
      _description = description;
    }
    if (price != null) {
      _price = price;
    }
    if (discountPercentage != null) {
      _discountPercentage = discountPercentage;
    }
    if (rating != null) {
      _rating = rating;
    }
    if (stock != null) {
      _stock = stock;
    }
    if (brand != null) {
      _brand = brand;
    }
    if (category != null) {
      _category = category;
    }
    if (thumbnail != null) {
      _thumbnail = thumbnail;
    }
    if (images != null) {
      _images = images;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get description => _description;
  set description(String? description) => _description = description;
  int? get price => _price;
  set price(int? price) => _price = price;
  double? get discountPercentage => _discountPercentage;
  set discountPercentage(double? discountPercentage) =>
      _discountPercentage = discountPercentage;
  double? get rating => _rating;
  set rating(double? rating) => _rating = rating;
  int? get stock => _stock;
  set stock(int? stock) => _stock = stock;
  String? get brand => _brand;
  set brand(String? brand) => _brand = brand;
  String? get category => _category;
  set category(String? category) => _category = category;
  String? get thumbnail => _thumbnail;
  set thumbnail(String? thumbnail) => _thumbnail = thumbnail;
  List<String>? get images => _images;
  set images(List<String>? images) => _images = images;

  Product.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _price = json['price'];
    _discountPercentage = json['discountPercentage'];
    _rating = json['rating'];
    _stock = json['stock'];
    _brand = json['brand'];
    _category = json['category'];
    _thumbnail = json['thumbnail'];
    _images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = _id;
    data['title'] = _title;
    data['description'] = _description;
    data['price'] = _price;
    data['discountPercentage'] = _discountPercentage;
    data['rating'] = _rating;
    data['stock'] = _stock;
    data['brand'] = _brand;
    data['category'] = _category;
    data['thumbnail'] = _thumbnail;
    data['images'] = _images;
    return data;
  }
}
