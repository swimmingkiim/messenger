// flutter
import 'package:flutter/material.dart';

// packages
import 'package:go_router/go_router.dart';

// pages
import 'package:messenger/src/presentations/pages.dart';

// routes
import 'route_path.dart';

final GoRouter router = GoRouter(
  initialLocation: RoutePath.walkthrough,
  routes: <RouteBase>[
    GoRoute(
      path: RoutePath.walkthrough,
      builder: (BuildContext context, GoRouterState state) {
        return const WalkthroughPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: RoutePath.walkthroughVerificationPhoneNumber
              .replaceFirst('${RoutePath.walkthrough}/', ''),
          builder: (BuildContext context, GoRouterState state) {
            return const VerificationPhoneNumberPage();
          },
        ),
      ],
    ),
  ],
);
