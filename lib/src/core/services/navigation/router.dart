import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nagorik_mobile/src/core/services/navigation/router_state/router_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../feature/authentication/presentation/login/views/login_screen.dart';
import '../../../feature/onboarding/presentation/splash/views/splash_screen.dart';
import '../../extensions/riverpod_extensions.dart';
import '../../widgets/app_startup/startup_widget.dart';
import 'routes.dart';

part 'parts/authentication_routes.dart';
part 'parts/on_boarding_routes.dart';
part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Root');

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    refreshListenable: ref.asListenable(routerStateProvider),
    initialLocation: Routes.initial,
    redirect: (context, state) {
      if ([
        Routes.initial,
        Routes.splash,
      ].contains(state.uri.path)) {
        return ref.asListenable(routerStateProvider).value;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: Routes.initial,
        name: Routes.initial,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: AppStartupWidget(
              loading: SplashScreen(),
              loaded: SplashScreen(),
            ),
          );
        },
      ),
      ..._onboardingRoutes,
      ..._authenticationRoutes,
    ],
  );
}
