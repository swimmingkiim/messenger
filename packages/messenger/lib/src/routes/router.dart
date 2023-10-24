// flutter
import 'package:flutter/material.dart';

// packages
import 'package:go_router/go_router.dart';

// pages
import 'package:messenger/src/presentations/pages/pages.dart';

// routes
import 'route_path.dart';

final GoRouter router = GoRouter(
  initialLocation: RoutePath.walkthrough,
  routes: <RouteBase>[
    GoRoute(
      path: RoutePath.walkthrough,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const NoTransitionPage(
          child: WalkthroughPage(),
        );
      },
    ),
    GoRoute(
      path: RoutePath.walkthroughVerificationPhoneNumber,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const NoTransitionPage(
          child: VerificationPhoneNumberPage(),
        );
      },
    ),
    GoRoute(
      path: RoutePath.walkthroughVerificationPinNumber,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const NoTransitionPage(
          child: VerificationPinNumberPage(),
        );
      },
    ),
    GoRoute(
      path: RoutePath.walkthroughProfileAccount,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const NoTransitionPage(
          child: ProfileAccountPage(),
        );
      },
    ),
    GoRoute(
      path: RoutePath.contacts,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const NoTransitionPage(
          child: ContactsPage(),
        );
      },
    ),
    GoRoute(
      path: RoutePath.chats,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const NoTransitionPage(
          child: ChatsPage(),
        );
      },
    ),
    GoRoute(
      path: RoutePath.more,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const NoTransitionPage(
          child: MorePage(),
        );
      },
    ),
    GoRoute(
      path: RoutePath.chat,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const NoTransitionPage(
          child: ChatPage(),
        );
      },
    ),
  ],
);
