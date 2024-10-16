part of '../router.dart';

List<StatefulShellRoute> _navBarRoutes = [
  StatefulShellRoute.indexedStack(
    branches: <StatefulShellBranch>[
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: Routes.home,
            name: Routes.home,
            pageBuilder: (context, state) => const MaterialPage(
              child: HomeTab(),
            ),
          )
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: Routes.map,
            name: Routes.map,
            pageBuilder: (context, state) => const MaterialPage(
              child: MapTab(),
            ),
          )
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: Routes.add,
            name: Routes.add,
            pageBuilder: (context, state) => const MaterialPage(
              child: AddTab(),
            ),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: Routes.news,
            name: Routes.news,
            pageBuilder: (context, state) => const MaterialPage(
              child: NewsTab(),
            ),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: Routes.profile,
            name: Routes.profile,
            pageBuilder: (context, state) => const MaterialPage(
              child: ProfileTab(),
            ),
          )
        ],
      )
    ],
    builder: (context, state, navigationShell) {
      return NavBar(navigationShell: navigationShell);
    },
  ),
];
