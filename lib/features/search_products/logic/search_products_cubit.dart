import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/enums/status_enum.dart';

import '../../home/data/models/product_model.dart';
import '../../home/data/models/product_seller_model.dart';
import '../data/models/search_products_request_body.dart';
import '../data/repos/search_products_repo.dart';
import 'search_products_state.dart';

class SearchProductsCubit extends Cubit<CustomerSearchProductsState> {
  final SearchProductsRepo _customerSearchProductsRepo;
  SearchProductsCubit(this._customerSearchProductsRepo)
      : super(CustomerSearchProductsState());
  TextEditingController searchController = TextEditingController();
  SearchProductsRequestBody searchProductsRequestBody =
      SearchProductsRequestBody(
    page: 1,
  );
  ScrollController scrollController = ScrollController();

  List<ProductModel> products = [
    ProductModel(
      id: "1",
      specialStatus: FilterType.bestSellers,
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

  onScroll() {
    if (scrollController.position.maxScrollExtent == scrollController.offset) {
      getProducts();
    }
  }

  getProducts() async {
    emit(state.copyWith(products: Status.loading));
    searchProductsRequestBody.page = searchProductsRequestBody.page + 1;
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

  getSearchedProducts({String? query}) async {
    searchProductsRequestBody
      ..query = query
      ..page = 1;
    getProducts();
  }

  @override
  close() {
    searchController.dispose();
    scrollController.dispose();
    return super.close();
  }
}
