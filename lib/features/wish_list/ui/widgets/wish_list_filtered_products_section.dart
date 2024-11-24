import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/translations/locale_keys.g.dart';

import '../../../../core/theme/app_styles.dart';
import '../../../../core/widgets/filter_items_widget.dart';
import '../../../../core/widgets/there_is_no_data_text_widget.dart';
import '../../../home/ui/widgets/home_product_card.dart';
import '../../logic/wish_list_cubit.dart';
import '../../logic/wish_list_state.dart';

class WishListProductsSection extends StatelessWidget {
  final WishListCubit cubit;
  const WishListProductsSection({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishListCubit, WishListState>(
      builder: (context, state) {
        return Column(children: [
          Align(
            alignment: Directionality.of(context) == TextDirection.ltr
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: Text(LocaleKeys.wish_list.tr(),
                style: getFontStyleIfTheme(context, textStyle16Bold)),
          ),
          const SizedBox(
            height: 8,
          ),
          FilterItemsWidget(
              selectFilter: cubit.selectFilter,
              filters: cubit.filters.map((e) => e.name).toList(),
              selectedFilterIndex: state.selectedFilterIndex),
          SizedBox(
            height: 16.h,
          ),
          cubit.wishList.isEmpty
              ? const ThereIsNoDataTextWidget()
              : Wrap(
                  children: List.generate(
                      cubit.wishList.length,
                      (index) => HomeProductCard(
                            product: cubit.wishList[index],
                            index: index,
                            onTapWishList: () {
                              cubit.removeFromWhishList(cubit.wishList[index]);
                            },
                          )))
        ]);
      },
    );
  }
}
