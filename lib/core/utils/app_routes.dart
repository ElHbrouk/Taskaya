import 'package:go_router/go_router.dart';
import 'package:taskaya/features/home/presentation/views/home_view.dart';
import 'package:taskaya/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:taskaya/features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  static const splashView = '/';
  static const onBoardingView = '/onBoardingView';
  static const homeView = '/homeView';

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: onBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
