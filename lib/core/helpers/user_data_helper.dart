import '../../features/home/data/models/user_model.dart';
import '../constants/locale_storage_keys.dart';
import 'locale_storage.dart';

class UserDataHelper {
  static UserModel? userModel;
  static getCachedUser() async {
    // final data = await LocaleStorage.get(LocaleStorageKeys.userKey);
    // userModel = data != null ? UserModel.fromJson(data) : null;
    userModel = const UserModel(
        id: "1", email: "email@email.com", wishListProducts: []);
  }

  // static Future<void> setUser(UserModel user) async {
  //   await LocaleStorage.set(LocaleStorageKeys.userKey, user.toJson());
  //   userModel = user;
  // }
}
