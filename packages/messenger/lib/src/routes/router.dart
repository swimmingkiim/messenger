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
        GoRoute(
          path: RoutePath.walkthroughVerificationPinNumber
              .replaceFirst('${RoutePath.walkthrough}/', ''),
          builder: (BuildContext context, GoRouterState state) {
            return const VerificationPinNumberPage();
          },
        ),
        GoRoute(
          path: RoutePath.walkthroughProfileAccount
              .replaceFirst('${RoutePath.walkthrough}/', ''),
          builder: (BuildContext context, GoRouterState state) {
            return const ProfileAccountPage();
          },
        ),
      ],
    ),
    GoRoute(
      path: RoutePath.contacts,
      builder: (BuildContext context, GoRouterState state) {
        return const ContactsPage();
      },
    ),
    GoRoute(
      path: RoutePath.chats,
      builder: (BuildContext context, GoRouterState state) {
        return const ChatsPage();
      },
    ),
    GoRoute(
      path: RoutePath.more,
      builder: (BuildContext context, GoRouterState state) {
        return const MorePage();
      },
    ),
    GoRoute(
      path: RoutePath.chat,
      builder: (BuildContext context, GoRouterState state) {
        return const ChatPage();
      },
    ),
  ],
);
