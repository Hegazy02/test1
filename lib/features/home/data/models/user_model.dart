import 'dart:convert';

class UserModel {
  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final String avatar;
  final List<String> wishListProducts;

  const UserModel({
    required this.id,
    this.name = '',
    required this.email,
    this.phoneNumber = '',
    this.avatar = '',
    required this.wishListProducts,
  });

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
    String? phoneNumber,
    String? avatar,
    List<String>? wishListProducts,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      avatar: avatar ?? this.avatar,
      wishListProducts: wishListProducts ?? this.wishListProducts,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'avatar': avatar,
      'wishListProducts': wishListProducts
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      phoneNumber: map['phoneNumber'] as String,
      avatar: map['avatar'] as String,
      wishListProducts: map['wishListProducts'] == null
          ? []
          : List<String>.from(
              map['wishListProducts'] as List,
            ),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
