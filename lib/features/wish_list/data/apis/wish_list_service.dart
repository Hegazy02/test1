import '../../../home/data/models/product_model.dart';

abstract class WishListService {
  const WishListService();

  Future<List<ProductModel>> getProducts();
}
