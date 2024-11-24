import 'package:get_it/get_it.dart';

import '../../features/home/data/apis/home_firebase_services.dart';
import '../../features/home/data/apis/home_service.dart';
import '../../features/home/data/repos/home_repo.dart';
import '../../features/search_products/data/apis/search_products_api_services.dart';
import '../../features/search_products/data/apis/search_products_service.dart';
import '../../features/search_products/data/repos/search_products_repo.dart';
import '../../features/wish_list/data/apis/wish_list_api_services.dart';
import '../../features/wish_list/data/apis/wish_list_service.dart';
import '../../features/wish_list/data/repos/wish_list_repo.dart';
import '../helpers/user_data_helper.dart';

final getIt = GetIt.instance;
setupGetIt() {
  // // Home
  getIt.registerLazySingleton<HomeService>(() => HomeFirebaseServices());
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt<HomeService>()));
  // //  search products

  getIt.registerLazySingleton<SearchProductsService>(
      () => SearchProductsApiServices());
  getIt.registerLazySingleton<SearchProductsRepo>(
      () => SearchProductsRepo(getIt<SearchProductsService>()));

  // WishList
  getIt.registerLazySingleton<WishListService>(() => WishListApiServices());
  getIt.registerLazySingleton<WishListRepo>(
      () => WishListRepo(getIt<WishListService>()));
  // Helpers
  getIt.registerLazySingleton<UserDataHelper>(() => UserDataHelper());
}
