import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/widgets/default_app_bar.dart';
import '../../../core/widgets/grey_text_field.dart';
import '../../../core/widgets/there_is_no_data_text_widget.dart';
import '../../../translations/locale_keys.g.dart';
import '../logic/search_products_cubit.dart';
import '../logic/search_products_state.dart';
import 'widgets/search_product_card.dart';

class SearchProductsView extends StatelessWidget {
  const SearchProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SearchProductsCubit>();
    return Scaffold(
      appBar: defaultAppBar(context: context, title: LocaleKeys.search),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GreyTextField(
              controller: cubit.searchController,
              hintText: LocaleKeys.search.tr(),
              onChanged: (query) {
                cubit.getSearchedProducts(
                  query: query,
                );
              },
            ),
            Expanded(child:
                BlocBuilder<SearchProductsCubit, CustomerSearchProductsState>(
              builder: (context, state) {
                if (cubit.products.isEmpty) {
                  return const ThereIsNoDataTextWidget();
                }
                return ListView.separated(
                    itemCount: cubit.products.length,
                    controller: cubit.scrollController,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 12),
                    padding: const EdgeInsets.only(top: 8),
                    itemBuilder: (context, index) => SearchProductCard(
                          product: cubit.products[index],
                        ));
              },
            ))
          ],
        ),
      )),
    );
  }
}
