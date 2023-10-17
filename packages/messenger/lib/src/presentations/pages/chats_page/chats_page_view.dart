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

class ChatsPageView extends StatelessWidget {
  const ChatsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
      bottomNavigationBar: DefaultBottomNavigationBar(),
    );
  }

  PreferredSizeWidget buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      foregroundColor: DefaultTheme.neutralActive,
      automaticallyImplyLeading: false,
      title: buildAppBarTitle(),
      actions: [
        buildAddFriendButton(),
        const SizedBox(
          width: 24.0,
        ),
      ],
      bottom: buildSearchBar(),
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
        'Chats',
        style: DefaultTheme.textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget buildAddFriendButton() {
    return InkWell(
      onTap: () {},
      child: SvgPicture.asset(
        'assets/icons/plus.svg',
        width: 24.0,
        height: 24.0,
      ),
    );
  }

  PreferredSizeWidget buildSearchBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(68.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: Container(
          height: 42.0,
          padding: const EdgeInsets.all(6.0),
          decoration: const BoxDecoration(
            color: DefaultTheme.neutralOffWhite,
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
          ),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              prefixIcon: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 24.0,
                height: 24.0,
                colorFilter: const ColorFilter.mode(
                    DefaultTheme.neutralDisabled, BlendMode.srcIn),
              ),
              hintText: 'Search',
              hintStyle: DefaultTheme.textTheme.bodyLarge!.copyWith(
                color: DefaultTheme.neutralDisabled,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    return buildFriendsList();
  }

  Widget buildFriendsList() {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
        bottom: 16.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 68.0,
          padding: const EdgeInsets.only(bottom: 12.0),
          child: buildFriendsListItem(
            name: 'Athalia Putri',
            description: 'Last seen yesterday',
            profileImageUrl:
                'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
            isOnline: true,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Divider(),
        );
      },
      itemCount: 30,
    );
  }

  Widget buildFriendsListItem({
    required String name,
    required String description,
    required String profileImageUrl,
    required bool isOnline,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(16.0),
                ),
                child: Image.network(
                  profileImageUrl,
                  width: 48.0,
                  height: 48.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (isOnline)
              Positioned(
                top: 0.0,
                right: 0.0,
                child: Container(
                  width: 15.0,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: DefaultTheme.accentSuccess,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: DefaultTheme.neutralWhite,
                      width: 3.0,
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(
          width: 12.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: DefaultTheme.textTheme.bodyLarge!.copyWith(
                color: DefaultTheme.neutralActive,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              width: 2.0,
            ),
            Text(
              description,
              style: DefaultTheme.textTheme.labelLarge!.copyWith(
                color: DefaultTheme.neutralDisabled,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              width: 10.0,
            ),
          ],
        ),
      ],
    );
  }
}
