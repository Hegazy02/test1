import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../translations/locale_keys.g.dart';
import '../../../home/data/models/product_model.dart';
import '../apis/wish_list_service.dart';

class WishListRepo {
  const WishListRepo(this._wishListService);
  final WishListService _wishListService;

  Future<Either<String, List<ProductModel>>> getProducts() async {
    try {
      final result = await _wishListService.getProducts();
      return right(result);
    } catch (e) {
      return left(LocaleKeys.something_went_wrong.tr());
    }
  }
}
