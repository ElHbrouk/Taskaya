import 'package:flutter/material.dart';
import 'package:taskaya/core/utils/app_colors.dart';

class CustomGradientWidget extends StatelessWidget {
  const CustomGradientWidget({
    super.key,
    required this.child,
    this.margin,
  });
  final Widget child;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.linearColor1,
            AppColors.linearColor2,
            AppColors.linearColor3,
          ],
        ),
      ),
      child: child,
    );
  }
}
