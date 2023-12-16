class DataModel {
  String? company;
  String? category;
  String? description;
  bool? discount;
  String? name;
  List<dynamic>? image;
  dynamic price;
  int? id;
  dynamic rate;
  dynamic oldPrice;
  DataModel(
      {this.company,
      this.category,
      this.description,
      this.discount,
      this.id,
      this.image,
      this.name,
      this.oldPrice,
      this.price,
      this.rate});

  // ignore: empty_constructor_bodies
  factory DataModel.fromJson(json) {
    return DataModel(
      name: json['name'],
      company: json['company'],
      image: json['images'],
      price: json['price'],
      category: json['category'],
      description: json['description'],
      discount: json['discount'],
      rate: json['rate'],
      oldPrice: json['oldPrice'],
      id: json['id'],
    );
  }
}
