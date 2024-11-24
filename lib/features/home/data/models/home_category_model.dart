class HomeCategoryModel {
  final String id;
  final String title;
  final String image;
  HomeCategoryModel({
    required this.id,
    required this.title,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'image': image,
    };
  }

  factory HomeCategoryModel.fromMap(Map<String, dynamic> map) {
    return HomeCategoryModel(
      id: map['id'] as String,
      title: map['title'] as String,
      image: map['image'] as String,
    );
  }
}
