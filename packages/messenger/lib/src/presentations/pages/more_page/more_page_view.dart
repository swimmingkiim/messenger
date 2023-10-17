// flutter
import 'package:flutter/material.dart';

// packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

// routes
import 'package:messenger/src/routes/routes.dart';

// widgets
import 'package:messenger/src/presentations/widgets/widgets.dart';

// themes
import 'package:messenger/src/themes/themes.dart';

class MorePageView extends StatelessWidget {
  const MorePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
      bottomNavigationBar: const DefaultBottomNavigationBar(),
    );
  }

  PreferredSizeWidget buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      foregroundColor: DefaultTheme.neutralActive,
      automaticallyImplyLeading: false,
      title: buildAppBarTitle(),
    );
  }

  Widget buildAppBarTitle() {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Text(
        'More',
        style: DefaultTheme.textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget buildBody() {
    return Column(
      children: [
        buildProfileButton(),
        const SizedBox(
          height: 8.0,
        ),
        buildSettingNavigationButton(
          label: 'Account',
          iconPath: 'assets/icons/user.svg',
        ),
        const SizedBox(
          height: 8.0,
        ),
        buildSettingNavigationButton(
          label: 'Chats',
          iconPath: 'assets/icons/message_circle.svg',
        ),
        const SizedBox(
          height: 8.0,
        ),
        buildSettingNavigationButton(
          label: 'Appereance',
          iconPath: 'assets/icons/sun.svg',
        ),
        const SizedBox(
          height: 8.0,
        ),
        buildSettingNavigationButton(
          label: 'Notification',
          iconPath: 'assets/icons/notification.svg',
        ),
        const SizedBox(
          height: 8.0,
        ),
        buildSettingNavigationButton(
          label: 'Privacy',
          iconPath: 'assets/icons/outline-privacy-tip.svg',
        ),
        const SizedBox(
          height: 8.0,
        ),
        buildSettingNavigationButton(
          label: 'Data Usage',
          iconPath: 'assets/icons/folder.svg',
        ),
        const SizedBox(
          height: 8.0,
        ),
        buildSettingNavigationButton(
          label: 'Help',
          iconPath: 'assets/icons/help-circle.svg',
        ),
        const SizedBox(
          height: 8.0,
        ),
        buildSettingNavigationButton(
          label: 'Invite Your Friends',
          iconPath: 'assets/icons/mail.svg',
        ),
      ],
    );
  }

  Widget buildProfileButton() {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ).copyWith(left: 24.0),
        child: Row(
          children: [
            buildProfileImage(),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Almayra Zamzamy',
                  style: DefaultTheme.textTheme.bodyLarge,
                ),
                const SizedBox(
                  width: 2.0,
                ),
                Text(
                  '+82 0000 - 0000 - 0000',
                  style: DefaultTheme.textTheme.labelLarge!.copyWith(
                    color: DefaultTheme.neutralDisabled,
                  ),
                ),
              ],
            ),
            const Spacer(),
            SvgPicture.asset(
              'assets/icons/chevron_right.svg',
              width: 24.0,
              height: 24.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileImage() {
    return Container(
      width: 50.0,
      height: 50.0,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: DefaultTheme.neutralOffWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
      child: SvgPicture.asset(
        'assets/icons/user.svg',
        width: 24.0,
        height: 24.0,
      ),
    );
  }

  Widget buildSettingNavigationButton({
    required String label,
    required String iconPath,
  }) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ).copyWith(left: 36.0),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              width: 24.0,
              height: 24.0,
            ),
            const SizedBox(
              width: 6.0,
            ),
            Text(
              label,
              style: DefaultTheme.textTheme.bodyLarge,
            ),
            const Spacer(),
            SvgPicture.asset(
              'assets/icons/chevron_right.svg',
              width: 24.0,
              height: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
