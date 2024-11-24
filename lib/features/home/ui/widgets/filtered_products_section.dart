import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/there_is_no_data_text_widget.dart';
import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';
import '../../../../../core/widgets/filter_items_widget.dart';
import 'home_product_card.dart';

class FilteredProductsSection extends StatelessWidget {
  final HomeCubit cubit;
  const FilteredProductsSection({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(children: [
          FilterItemsWidget(
              selectFilter: cubit.selectFilter,
              filters: cubit.filters.map((e) => e.name).toList(),
              selectedFilterIndex: state.selectedFilterIndex),
          SizedBox(
            height: 16.h,
          ),
          cubit.products.isEmpty
              ? const ThereIsNoDataTextWidget()
              : Wrap(
                  children: List.generate(
                      cubit.products.length,
                      (index) => HomeProductCard(
                            product: cubit.products[index],
                            index: index,
                            onTapWishList: () {
                              context
                                  .read<HomeCubit>()
                                  .modifyWishList(cubit.products[index]);
                            },
                          )))
        ]);
      },
    );
  }
}
