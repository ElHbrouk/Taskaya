import 'package:flutter/material.dart';
import 'package:taskaya/core/utils/app_colors.dart';

class CustomGradientWidget extends StatelessWidget {
  const CustomGradientWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.primaryColor1,
            AppColors.primaryColor2,
            AppColors.primaryColor3,
          ],
        ),
      ),
      child: child,
    );
  }
}
