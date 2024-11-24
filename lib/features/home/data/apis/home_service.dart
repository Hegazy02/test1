import '../models/product_model.dart';

abstract class HomeService {
  const HomeService();

  Future<List<ProductModel>> getProducts();
}
