import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taskaya/constants.dart';
import 'package:taskaya/core/services/shared_preferences_singleton.dart';
import 'package:taskaya/core/utils/app_fonts.dart';
import 'package:taskaya/core/utils/app_routes.dart';
import 'package:taskaya/core/widgets/custom_gradient_widget.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigateToOnBoardingView();
    super.initState();
  }

  void navigateToOnBoardingView() {
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () {
        if (SharedPreferencesSingleton.getBool(key: kIsOnBoardingViewSeen)) {
          context.go(
            AppRoutes.homeView,
          );
        } else {
          context.go(
            AppRoutes.onBoardingView,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomGradientWidget(
      child: Center(
        child: Text(
          'Taskaya',
          style: AppFonts.bold58(context),
        ),
      ),
    );
  }
}
