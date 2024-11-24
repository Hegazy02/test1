import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/repos/home_repo.dart';
import '../../features/home/logic/home_cubit.dart';
import '../../features/home/ui/home_view.dart';
import '../../features/main/logic/main_cubit.dart';
import '../../features/main/ui/main_view.dart';
import '../../features/search_products/data/repos/search_products_repo.dart';
import '../../features/search_products/logic/search_products_cubit.dart';
import '../../features/search_products/ui/search_products_view.dart';
import '../../features/wish_list/data/repos/wish_list_repo.dart';
import '../../features/wish_list/logic/wish_list_cubit.dart';
import '../../features/wish_list/ui/wish_list_view.dart';
import '../di/get_it.dart';
import 'routes_names.dart';

class RouterHelper {
  static final router = GoRouter(
    initialLocation: Routes.mainView,
    routes: [
      GoRoute(
        path: Routes.mainView,
        name: Routes.mainView,
        builder: (context, state) => BlocProvider(
            create: (context) => MainCubit(), child: const MainView()),
      ),
      GoRoute(
        path: Routes.homeview,
        name: Routes.homeview,
        builder: (context, state) => BlocProvider(
            create: (context) => HomeCubit(getIt<HomeRepo>()),
            child: const HomeView()),
      ),
      GoRoute(
        path: Routes.searchProductsView,
        name: Routes.searchProductsView,
        builder: (context, state) => BlocProvider(
            create: (context) =>
                SearchProductsCubit(getIt<SearchProductsRepo>()),
            child: const SearchProductsView()),
      ),
      GoRoute(
        path: Routes.wishListView,
        name: Routes.wishListView,
        builder: (context, state) => BlocProvider(
            create: (context) =>
                WishListCubit(getIt<WishListRepo>())..getProducts(),
            child: const WishListView()),
      ),
    ],
  );
}
