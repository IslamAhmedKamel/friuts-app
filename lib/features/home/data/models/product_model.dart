class ProductModel {
  num? id;
  double? rating;
  String? imageUrl;
  String? description;
  String? name;
  num? price;
  num? categoryId;

  ProductModel({
    this.id,
    this.rating,
    this.imageUrl,
    this.description,
    this.name,
    this.price,
    this.categoryId,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    rating = json['rating'];
    imageUrl = json['imageUrl'];
    description = json['description'];
    name = json['name'];
    price = json['price'];
    categoryId = json['category_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['rating'] = this.rating;
    data['imageUrl'] = this.imageUrl;
    data['description'] = this.description;
    data['name'] = this.name;
    data['price'] = this.price;
    data['category_id'] = this.categoryId;
    return data;
  }
}
