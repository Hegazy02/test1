import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/enums/status_enum.dart';
import '../../../core/helpers/user_data_helper.dart';
import '../data/models/home_category_model.dart';
import '../data/models/product_model.dart';
import '../data/models/product_seller_model.dart';
import '../data/models/user_model.dart';
import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState());

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
  List<HomeCategoryModel> categories = [
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image: "https://m.media-amazon.com/images/I/313Wl4EhS+L._AC_SY580_.jpg",
    ),
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image:
          "https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Hypland-x-Hunter-x-Hunter-Killua-Eye-Blue-T-Shirt-_330904-back-US.jpg",
    ),
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image:
          "https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Hypland-x-Hunter-x-Hunter-Killua-Eye-Blue-T-Shirt-_330904-back-US.jpg",
    ),
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image:
          "https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Hypland-x-Hunter-x-Hunter-Killua-Eye-Blue-T-Shirt-_330904-back-US.jpg",
    ),
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image:
          "https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Hypland-x-Hunter-x-Hunter-Killua-Eye-Blue-T-Shirt-_330904-back-US.jpg",
    ),
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image:
          "https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Hypland-x-Hunter-x-Hunter-Killua-Eye-Blue-T-Shirt-_330904-back-US.jpg",
    ),
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image:
          "https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Hypland-x-Hunter-x-Hunter-Killua-Eye-Blue-T-Shirt-_330904-back-US.jpg",
    ),
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image:
          "https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Hypland-x-Hunter-x-Hunter-Killua-Eye-Blue-T-Shirt-_330904-back-US.jpg",
    ),
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image:
          "https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Hypland-x-Hunter-x-Hunter-Killua-Eye-Blue-T-Shirt-_330904-back-US.jpg",
    ),
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image:
          "https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Hypland-x-Hunter-x-Hunter-Killua-Eye-Blue-T-Shirt-_330904-back-US.jpg",
    ),
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image:
          "https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Hypland-x-Hunter-x-Hunter-Killua-Eye-Blue-T-Shirt-_330904-back-US.jpg",
    ),
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image:
          "https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Hypland-x-Hunter-x-Hunter-Killua-Eye-Blue-T-Shirt-_330904-back-US.jpg",
    ),
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image:
          "https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Hypland-x-Hunter-x-Hunter-Killua-Eye-Blue-T-Shirt-_330904-back-US.jpg",
    ),
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image:
          "https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Hypland-x-Hunter-x-Hunter-Killua-Eye-Blue-T-Shirt-_330904-back-US.jpg",
    ),
    HomeCategoryModel(
      id: "1",
      title: "تيشرتات",
      image:
          "https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Hypland-x-Hunter-x-Hunter-Killua-Eye-Blue-T-Shirt-_330904-back-US.jpg",
    ),
  ];
  List<FilterType> filters = [
    FilterType.all,
    FilterType.bestSellers,
    FilterType.mostRecent,
    FilterType.men,
    FilterType.women,
    FilterType.children,
  ];

  selectFilter(int index) {
    getProducts();
    emit(state.copyWith(selectedFilterIndex: index));
  }

  getProducts() async {
    emit(state.copyWith(products: Status.loading));
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

  modifyWishList(ProductModel product) async {
    if (checkIfExist(product)) {
      await removeFromWhishList(product);
    } else {
      await addToWhishlist(product);
    }
  }

  checkIfExist(ProductModel product) {
    List<String> wishList = UserDataHelper.userModel!.wishListProducts;
    return wishList.contains(product.id);
  }

  addToWhishlist(ProductModel product) {
    addToWithListLocally(product);

    emit(state.copyWith(products: Status.success));
  }

  removeFromWhishList(ProductModel product) {
    removeFromWhishListLocaly(product);

    emit(state.copyWith(products: Status.success));
  }

  Future<void> addToWithListLocally(ProductModel product) async {
    UserModel user = UserDataHelper.userModel!;
    List<String> wishList = List.from(user.wishListProducts);
    wishList.insert(0, product.id);
    UserModel newUser = user.copyWith(wishListProducts: wishList);
    UserDataHelper.userModel = newUser;

    // await UserDataHelper.setUser(newUser);
  }

  Future<void> removeFromWhishListLocaly(ProductModel product) async {
    UserModel user = UserDataHelper.userModel!;
    List<String> wishList = user.wishListProducts;
    wishList.remove(product.id);
    UserModel newUser = user.copyWith(wishListProducts: wishList);
    UserDataHelper.userModel = newUser;
    // await UserDataHelper.setUser(newUser);
  }
}
