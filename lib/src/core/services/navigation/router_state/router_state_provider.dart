import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../di/dependency_injection.dart';
import '../../../riverpod/startup/app_startup_provider.dart';
import '../../cache/cache_service.dart';
import '../routes.dart';

part 'router_state_provider.g.dart';

@Riverpod(keepAlive: true)
class RouterState extends _$RouterState {
  CacheService? local;

  @override
  String? build() {
    ref.listen(appStartupProvider, (_, state) {
      if (!(state.isLoading || state.hasError)) {
        local = ref.read(cacheServiceProvider);
        decideNextRoute();
      }
    });
    return Routes.initial;
  }

  void decideNextRoute() {
    final isLoggedIn = local?.get(CacheKey.isLoggedIn) ?? false;

    if (state == Routes.initial) {
      state = Routes.splash;
      Timer(const Duration(milliseconds: 1000), () => decideNextRoute());
      return;
    }

    state = isLoggedIn ? Routes.dashboard : Routes.login;
  }
}
