import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../translations/locale_keys.g.dart';
import '../apis/home_service.dart';
import '../models/product_model.dart';

class HomeRepo {
  const HomeRepo(this._homeService);
  final HomeService _homeService;

  Future<Either<String, List<ProductModel>>> getProducts() async {
    try {
      final result = await _homeService.getProducts();
      return right(result);
    } catch (e) {
      return left(LocaleKeys.something_went_wrong.tr());
    }
  }
}
