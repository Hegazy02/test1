import '../models/product_model.dart';
import 'home_service.dart';

class HomeFirebaseServices extends HomeService {
  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      return [];
    } catch (e) {
      rethrow;
    }
  }
}
