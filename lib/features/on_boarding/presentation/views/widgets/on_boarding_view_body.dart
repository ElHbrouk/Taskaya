import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taskaya/constants.dart';
import 'package:taskaya/core/services/shared_preferences_singleton.dart';
import 'package:taskaya/core/utils/app_colors.dart';
import 'package:taskaya/core/utils/app_fonts.dart';
import 'package:taskaya/core/utils/app_routes.dart';
import 'package:taskaya/core/widgets/custom_gradient_widget.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradientWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 116.0,
          horizontal: 40.0,
        ),
        child: Column(
          children: [
            Text(
              'Taskaya',
              style: AppFonts.bold58(context),
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              'Your personal task manager,\nto keep you organized.',
              style: AppFonts.regular20(context),
            ),
            const Spacer(),
            CustomStartingButton(
              onPressed: () {
                SharedPreferencesSingleton.setBool(
                  key: kIsOnBoardingViewSeen,
                  value: true,
                );
                context.go(AppRoutes.homeView);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomStartingButton extends StatelessWidget {
  const CustomStartingButton({
    super.key,
    required this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      minWidth: double.infinity,
      color: AppColors.blueAccent,
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      onPressed: onPressed,
      child: Text(
        'Get Started',
        style: AppFonts.bold24(context),
      ),
    );
  }
}
