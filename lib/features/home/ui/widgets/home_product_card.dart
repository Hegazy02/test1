import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../core/helpers/user_data_helper.dart';
import '../../../../core/theme/app_styles.dart';
import '../../data/models/product_model.dart';

class HomeProductCard extends StatelessWidget {
  final ProductModel product;
  final int index;
  final VoidCallback onTapWishList;
  const HomeProductCard(
      {super.key,
      required this.product,
      required this.index,
      required this.onTapWishList});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      margin: EdgeInsetsDirectional.only(
          start: index.isEven ? 0 : MediaQuery.of(context).size.width * 0.05,
          bottom: 8.h),
      child: Column(
        children: [
          Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: FancyShimmerImage(
                width: MediaQuery.of(context).size.width * 0.43,
                height: MediaQuery.of(context).size.width * 0.5,
                imageUrl: product.images[0],
                boxFit: BoxFit.fill,
                boxDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                errorWidget: Icon(
                  Icons.error,
                  color: AppColors.darkSaturatedRed,
                  size: 24.sp,
                ),
              ),
            ),
            Positioned(
                child: IconButton.filled(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: onTapWishList,
                    icon: Icon(
                      UserDataHelper.userModel!.wishListProducts
                              .contains(product.id)
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                    )))
          ]),
          Text(
            product.title,
            style: getFontStyleIfTheme(context, textStyle12Bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${product.price} \$",
                style: getFontStyleIfTheme(context,
                    textStyle12Bold.copyWith(color: AppColors.lightGreen)),
              ),
              Row(
                children: [
                  Text(
                    product.totalRatings.toStringAsFixed(1),
                    style: getFontStyleIfTheme(context, textStyle12Regular),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Icon(
                    Icons.star_rounded,
                    color: AppColors.lightOrange,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
