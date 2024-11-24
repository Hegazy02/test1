import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/get_it.dart';
import 'core/helpers/locale_storage.dart';

import 'app.dart';
import 'core/helpers/user_data_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await ScreenUtil.ensureScreenSize();
  setupGetIt();

  LocaleStorage.init();
  await UserDataHelper.getCachedUser();

  runApp(const Test1App());
}
