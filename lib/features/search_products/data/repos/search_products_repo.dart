import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:test1/translations/locale_keys.g.dart';

import '../../../home/data/models/product_model.dart';
import '../apis/search_products_service.dart';

class SearchProductsRepo {
  const SearchProductsRepo(this._customerSearchProductsService);
  final SearchProductsService _customerSearchProductsService;

  Future<Either<String, List<ProductModel>>> getProducts() async {
    try {
      final result = await _customerSearchProductsService.getProducts();
      return right(result);
    } catch (e) {
      return left(LocaleKeys.something_went_wrong.tr());
    }
  }
}
