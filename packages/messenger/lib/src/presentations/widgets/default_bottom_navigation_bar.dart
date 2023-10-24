// flutter
import 'package:flutter/material.dart';

// packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

// routes
import 'package:messenger/src/routes/routes.dart';

// themes
import 'package:messenger/src/themes/themes.dart';

class DefaultBottomNavigationBar extends StatelessWidget {
  const DefaultBottomNavigationBar({super.key});

  int getCurrentIndex(String currentPath) {
    switch (currentPath) {
      case RoutePath.contacts:
        return 0;
      case RoutePath.chats:
        return 1;
      case RoutePath.more:
        return 2;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: getCurrentIndex(
        GoRouterState.of(context).path ?? RoutePath.contacts,
      ),
      backgroundColor: DefaultTheme.neutralWhite,
      onTap: (int index) {
        switch (index) {
          case 0:
            context.go(RoutePath.contacts);
            break;
          case 1:
            context.go(RoutePath.chats);
            break;
          case 2:
            context.go(RoutePath.more);
            break;
          default:
            break;
        }
      },
      items: [
        buildBottomNavigationBarItem(
          context: context,
          label: 'Contacts',
          navigateTo: RoutePath.contacts,
          iconPath: 'assets/icons/group.svg',
        ),
        buildBottomNavigationBarItem(
          context: context,
          label: 'Chats',
          navigateTo: RoutePath.chats,
          iconPath: 'assets/icons/message_circle.svg',
        ),
        buildBottomNavigationBarItem(
          context: context,
          label: 'More',
          navigateTo: RoutePath.more,
          iconPath: 'assets/icons/more_horizontal.svg',
        ),
      ],
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem({
    required BuildContext context,
    required String label,
    required String navigateTo,
    required String iconPath,
  }) {
    return BottomNavigationBarItem(
      label: label,
      icon: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 13.0,
          vertical: 6.0,
        ),
        child: SvgPicture.asset(
          iconPath,
          width: 32.0,
          height: 32.0,
        ),
      ),
      activeIcon: SizedBox(
        width: 58.0,
        height: 44.0,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              label,
              style: DefaultTheme.textTheme.bodyMedium!,
            ),
            const SizedBox(
              height: 4.0,
            ),
            Container(
              width: 4.0,
              height: 4.0,
              decoration: const BoxDecoration(
                color: DefaultTheme.neutralActive,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
