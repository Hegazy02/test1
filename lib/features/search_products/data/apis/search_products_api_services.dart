import '../../../home/data/models/product_model.dart';
import 'search_products_service.dart';

class SearchProductsApiServices extends SearchProductsService {
  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      return [];
    } catch (e) {
      rethrow;
    }
  }
}
