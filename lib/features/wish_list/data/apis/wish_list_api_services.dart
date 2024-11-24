import '../../../home/data/models/product_model.dart';
import 'wish_list_service.dart';

class WishListApiServices extends WishListService {
  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      return [];
    } catch (e) {
      rethrow;
    }
  }
}
