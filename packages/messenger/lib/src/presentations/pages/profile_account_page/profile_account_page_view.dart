// flutter
import 'package:flutter/material.dart';

// packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

// routes
import 'package:messenger/src/routes/routes.dart';

// themes
import 'package:messenger/src/themes/themes.dart';

class ProfileAccountPageView extends StatelessWidget {
  const ProfileAccountPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  PreferredSizeWidget buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      foregroundColor: DefaultTheme.neutralActive,
      leading: buildBackButton(),
      title: buildAppBarTitle(),
    );
  }

  Widget buildAppBarTitle() {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Text(
        'Your Profile',
        style: DefaultTheme.textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget buildBackButton() {
    return Builder(builder: (BuildContext context) {
      return InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
          context.pop();
        },
        child: Container(
          width: 24.0,
          height: 24.0,
          padding: const EdgeInsets.symmetric(
            vertical: 5.99,
            horizontal: 8.29,
          ),
          child: SvgPicture.asset(
            'assets/icons/chevron_left.svg',
          ),
        ),
      );
    });
  }

  Widget buildBody() {
    return Builder(builder: (BuildContext context) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            buildProfileImage(),
            const SizedBox(
              height: 31.0,
            ),
            buildFirstNameInput(),
            const SizedBox(
              height: 12.0,
            ),
            buildLastNameInput(),
            const Spacer(),
            buildSaveButton(),
            const SizedBox(
              height: 32.0,
            ),
          ],
        ),
      );
    });
  }

  Widget buildProfileImage() {
    return SizedBox(
      width: 100.0,
      height: 101.0,
      child: Stack(
        children: [
          Container(
            width: 100.0,
            height: 100.0,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: DefaultTheme.neutralOffWhite,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: SvgPicture.asset(
              'assets/icons/user.svg',
              width: 56.0,
              height: 56.0,
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: SvgPicture.asset(
              'assets/icons/plus_circle.svg',
              width: 24.0,
              height: 24.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFirstNameInput() {
    return Container(
      width: 327.0,
      height: 36.0,
      decoration: const BoxDecoration(
        color: DefaultTheme.neutralOffWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'First Name (Required)',
          hintStyle: DefaultTheme.textTheme.bodyLarge!.copyWith(
            color: DefaultTheme.neutralDisabled,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget buildLastNameInput() {
    return Container(
      width: 327.0,
      height: 36.0,
      decoration: const BoxDecoration(
        color: DefaultTheme.neutralOffWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Last Name (Optional)',
          hintStyle: DefaultTheme.textTheme.bodyLarge!.copyWith(
            color: DefaultTheme.neutralDisabled,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget buildSaveButton() {
    return Builder(builder: (BuildContext context) {
      return InkWell(
        onTap: () => context.go(RoutePath.contacts),
        child: Container(
          width: 327.0,
          height: 52.0,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: DefaultTheme.brandDefault,
            borderRadius: BorderRadius.all(
              Radius.circular(
                30.0,
              ),
            ),
          ),
          child: Text(
            'Save',
            style: DefaultTheme.textTheme.titleMedium!.copyWith(
              color: DefaultTheme.neutralWhite,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    });
  }
}
