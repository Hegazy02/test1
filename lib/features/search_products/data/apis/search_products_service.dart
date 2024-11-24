import '../../../home/data/models/product_model.dart';

abstract class SearchProductsService {
  const SearchProductsService();

  Future<List<ProductModel>> getProducts();
}
