import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class DefaultProfilePictureAvatar extends StatelessWidget {
  final double size;
  const DefaultProfilePictureAvatar({
    super.key,
    this.size = 110,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.lightGrey,
      ),
      child: Icon(Icons.person, color: AppColors.primaryColor, size: size / 2),
    );
  }
}
