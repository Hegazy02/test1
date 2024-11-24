import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/enums/status_enum.dart';

import '../../../core/helpers/user_data_helper.dart';
import '../../home/data/models/product_model.dart';
import '../../home/data/models/product_seller_model.dart';
import '../../home/data/models/user_model.dart';
import '../data/repos/wish_list_repo.dart';
import 'wish_list_state.dart';

class WishListCubit extends Cubit<WishListState> {
  final WishListRepo _wishListRepo;
  WishListCubit(this._wishListRepo) : super(WishListState());

  List<ProductModel> products = [
    ProductModel(
      id: "1",
      seller: ProductSellerModel(
          id: "132123",
          name: "Hegazy",
          image:
              "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg"),
      title: "بليزر كلاسيكي أنيق بأزرار مزدوجة.",
      category: "132",
      colors: ["red", "blue"],
      description:
          "بليزر كلاسيكي أنيق بأزرار مزدوجة. بليزر كلاسيكي أنيق بأزرار مزدوجة.",
      filterType: FilterType.all,
      images: [
        "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg",
        "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg"
      ],
      price: 30,
      sizes: [ProductSize.L, ProductSize.M, ProductSize.S],
      totalRatings: 4.6,
    ),
    ProductModel(
      id: "1",
      seller: ProductSellerModel(
          id: "132123",
          name: "Hegazy",
          image:
              "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg"),
      title: "بليزر كلاسيكي أنيق بأزرار مزدوجة.",
      category: "132",
      colors: ["red", "blue"],
      description:
          "بليزر كلاسيكي أنيق بأزرار مزدوجة. بليزر كلاسيكي أنيق بأزرار مزدوجة.",
      filterType: FilterType.all,
      images: [
        "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg",
        "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg"
      ],
      price: 30,
      sizes: [ProductSize.L, ProductSize.M, ProductSize.S],
      totalRatings: 4.6,
    ),
    ProductModel(
      id: "5",
      seller: ProductSellerModel(
          id: "132123",
          name: "Hegazy",
          image:
              "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg"),
      title: "بليزر كلاسيكي أنيق بأزرار مزدوجة.",
      category: "132",
      colors: ["red", "blue"],
      description:
          "بليزر كلاسيكي أنيق بأزرار مزدوجة. بليزر كلاسيكي أنيق بأزرار مزدوجة.",
      filterType: FilterType.all,
      images: [
        "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg",
        "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg"
      ],
      price: 30,
      sizes: [ProductSize.L, ProductSize.M, ProductSize.S],
      totalRatings: 4.6,
    ),
    ProductModel(
      id: "4",
      seller: ProductSellerModel(
          id: "132123",
          name: "Hegazy",
          image:
              "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg"),
      title: "بليزر كلاسيكي أنيق بأزرار مزدوجة.",
      category: "132",
      colors: ["red", "blue"],
      description:
          "بليزر كلاسيكي أنيق بأزرار مزدوجة. بليزر كلاسيكي أنيق بأزرار مزدوجة.",
      filterType: FilterType.all,
      images: [
        "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg",
        "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg"
      ],
      price: 30,
      sizes: [ProductSize.L, ProductSize.M, ProductSize.S],
      totalRatings: 4.6,
    ),
    ProductModel(
      id: "2",
      seller: ProductSellerModel(
          id: "132123",
          name: "Hegazy",
          image:
              "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg"),
      title: "بليزر كلاسيكي أنيق بأزرار مزدوجة.",
      category: "132",
      colors: ["red", "blue"],
      description:
          "بليزر كلاسيكي أنيق بأزرار مزدوجة. بليزر كلاسيكي أنيق بأزرار مزدوجة.",
      filterType: FilterType.all,
      images: [
        "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg",
        "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg"
      ],
      price: 30,
      sizes: [ProductSize.L, ProductSize.M, ProductSize.S],
      totalRatings: 4.6,
    ),
    ProductModel(
      id: "3",
      seller: ProductSellerModel(
          id: "132123",
          name: "Hegazy",
          image:
              "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg"),
      title: "بليزر كلاسيكي أنيق بأزرار مزدوجة.",
      category: "132",
      colors: ["red", "blue"],
      description:
          "بليزر كلاسيكي أنيق بأزرار مزدوجة. بليزر كلاسيكي أنيق بأزرار مزدوجة.",
      filterType: FilterType.all,
      images: [
        "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg",
        "https://img.joomcdn.net/5c09886f81b69cad7281e412a480a341ce2d29e9_original.jpeg"
      ],
      price: 30,
      sizes: [ProductSize.L, ProductSize.M, ProductSize.S],
      totalRatings: 4.6,
    ),
  ];
  List<ProductModel> wishList = [];
  List<FilterType> filters = [
    FilterType.all,
    FilterType.bestSellers,
    FilterType.mostRecent,
    FilterType.men,
    FilterType.women,
    FilterType.children,
  ];

  selectFilter(int index) {
    emit(state.copyWith(selectedFilterIndex: index));
  }

  getProducts() async {
    emit(state.copyWith(products: Status.loading));
    UserDataHelper.userModel?.wishListProducts.forEach(
      (e) => wishList.add(products.firstWhere((element) => element.id == e)),
    );
    log("wish list ${wishList.length}");
    emit(state.copyWith(products: Status.success));

    // final result = await _homeRepo.getProducts();
    // result.fold(
    //     (error) => emit(state.copyWith(
    //           errorMessage: error,
    //           recentRides: Status.error,
    //         )), (data) {
    //   products = [...data, ...data, ...data, ...data];

    //   emit(state.copyWith(recentRides: Status.success));
    // });
  }

  removeFromWhishList(ProductModel product) {
    emit(state.copyWith(products: Status.loading));
    removeFromWhishListLocaly(product);

    emit(state.copyWith(products: Status.success));
  }

  Future<void> removeFromWhishListLocaly(ProductModel product) async {
    UserModel user = UserDataHelper.userModel!;
    List<String> wishList = user.wishListProducts;
    wishList.remove(product.id);
    this.wishList.remove(product);
    products.remove(product);
    UserModel newUser = user.copyWith(wishListProducts: wishList);
    // await UserDataHelper.setUser(newUser);
  }
}
