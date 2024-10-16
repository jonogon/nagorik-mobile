part of '../router.dart';

List<GoRoute> _onboardingRoutes = [
  GoRoute(
    path: Routes.splash,
    name: Routes.splash,
    pageBuilder: (context, state) {
      return const MaterialPage(child: SplashScreen());
    },
  ),
];
