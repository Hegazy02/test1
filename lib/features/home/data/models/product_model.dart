import 'product_seller_model.dart';

class ProductModel {
  final String id;
  final ProductSellerModel seller;
  final String title;
  final List images;
  final String description;
  final num price;
  final String category;
  final FilterType filterType;
  final num totalRatings;
  final List<String> colors;
  final List<ProductSize> sizes;
  final FilterType? specialStatus;
  const ProductModel({
    required this.id,
    required this.seller,
    required this.title,
    required this.images,
    required this.description,
    required this.price,
    required this.category,
    required this.filterType,
    required this.totalRatings,
    required this.colors,
    required this.sizes,
    this.specialStatus,
  });

  ProductModel copyWith({
    String? id,
    ProductSellerModel? seller,
    String? title,
    List? images,
    String? description,
    num? price,
    String? category,
    FilterType? filterType,
    FilterType? specialStatus,
    num? totalRatings,
    List<String>? colors,
    List<ProductSize>? sizes,
  }) {
    return ProductModel(
      id: id ?? this.id,
      seller: seller ?? this.seller,
      title: title ?? this.title,
      images: images ?? this.images,
      description: description ?? this.description,
      price: price ?? this.price,
      category: category ?? this.category,
      filterType: filterType ?? this.filterType,
      totalRatings: totalRatings ?? this.totalRatings,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
      specialStatus: specialStatus ?? this.specialStatus,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'seller': seller,
      'title': title,
      'images': images,
      'description': description,
      'price': price,
      'category': category,
      'filterType': filterType.name,
      'specialStatus': specialStatus?.name,
      'totalRatings': totalRatings,
      'colors': colors,
      'sizes': sizes.map((x) => x.name).toList(),
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
        id: map['id'] as String,
        seller:
            ProductSellerModel.fromMap(map['seller'] as Map<String, dynamic>),
        title: map['title'] as String,
        images: List.from((map['images'] as List)),
        description: map['description'] as String,
        price: map['price'] as num,
        category: map['category'] as String,
        filterType: FilterType.values.byName(map['filterType'] as String),
        specialStatus: map['specialStatus'] == null
            ? null
            : FilterType.values.byName(map['specialStatus'] as String),
        totalRatings: map['totalRatings'] as num,
        colors: List<String>.from((map['colors'] as List)),
        sizes: (map['sizes'] as List)
            .map((e) => ProductSize.values.byName(
                  e,
                ))
            .toList());
  }
}

enum FilterType {
  all,
  men,
  women,
  children,
  bestSellers,
  mostRecent,
}

// ignore: constant_identifier_names
enum ProductSize { S, M, L, XL, XXL }
