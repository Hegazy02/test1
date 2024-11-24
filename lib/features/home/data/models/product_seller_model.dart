class ProductSellerModel {
  String id;
  String name;
  String image;
  ProductSellerModel({
    required this.id,
    required this.name,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
    };
  }

  factory ProductSellerModel.fromMap(Map<String, dynamic> map) {
    return ProductSellerModel(
      id: map['id'] as String,
      name: map['name'] as String,
      image: map['image'] as String,
    );
  }
}
