import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/wish_list_cubit.dart';
import '../logic/wish_list_state.dart';
import 'widgets/wish_list_filtered_products_section.dart';

class WishListView extends StatefulWidget {
  const WishListView({super.key});

  @override
  State<WishListView> createState() => _WishListViewState();
}

class _WishListViewState extends State<WishListView> {
  late final WishListCubit cubit;
  @override
  void initState() {
    cubit = context.read<WishListCubit>();
    cubit.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WishListCubit>();
    return BlocBuilder<WishListCubit, WishListState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              WishListProductsSection(cubit: cubit),
            ],
          ),
        );
      },
    );
  }
}
