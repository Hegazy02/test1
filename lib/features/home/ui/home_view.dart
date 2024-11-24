import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/routes_names.dart';
import '../../../../translations/locale_keys.g.dart';
import '../../../core/widgets/grey_text_field.dart';
import '../logic/home_cubit.dart';
import '../logic/home_state.dart';
import 'widgets/filtered_products_section.dart';
import 'widgets/home_categories_section.dart';
import 'widgets/home_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeHeader(),
          SizedBox(
            height: 12.h,
          ),
          GestureDetector(
            onTap: () {
              context.pushNamed(Routes.searchProductsView);
            },
            child: GreyTextField(
              hintText: LocaleKeys.search.tr(),
              enabled: false,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          HomeCategoriessSection(cubit: cubit),
          const SizedBox(
            height: 8,
          ),
          FilteredProductsSection(cubit: cubit),
        ],
      ),
    );
  }
}
