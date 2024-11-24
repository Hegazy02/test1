import 'package:easy_localization/easy_localization.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_styles.dart';
import '../../../home/data/models/product_model.dart';

class SearchProductCard extends StatelessWidget {
  final ProductModel product;
  const SearchProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 80.w,
          width: 80.w,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: FancyShimmerImage(
              imageUrl: product.images[0],
              boxFit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: getFontStyleIfTheme(context, textStyle14ExtraBold,
                    fontDarkModeColor: AppColors.lightGreen),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${product.price} \$ ",
                      style: getFontStyleIfTheme(
                          context,
                          textStyle12Bold.copyWith(
                              color: AppColors.lightGreen))),
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
              ),
              if (product.specialStatus != null)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(14)),
                  child: Text(
                    product.specialStatus!.name.tr(),
                    style: getFontStyleIfTheme(
                        context, textStyle12Bold.copyWith(color: Colors.white)),
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}
