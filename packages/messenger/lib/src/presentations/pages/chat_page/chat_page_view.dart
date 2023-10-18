// flutter
import 'package:flutter/material.dart';

// packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

// themes
import 'package:messenger/src/themes/themes.dart';

class ChatPageView extends StatelessWidget {
  const ChatPageView({super.key});

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
      automaticallyImplyLeading: false,
      title: buildAppBarTitle(),
      actions: [
        buildSearchButton(),
        const SizedBox(
          width: 8.0,
        ),
        buildDetails(),
        const SizedBox(
          width: 24.0,
        ),
      ],
      leading: buildBackButton(),
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
        'Athalia Putri',
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

  Widget buildSearchButton() {
    return InkWell(
      onTap: () {},
      child: SvgPicture.asset(
        'assets/icons/search.svg',
        width: 24.0,
        height: 24.0,
      ),
    );
  }

  Widget buildDetails() {
    return InkWell(
      onTap: () {},
      child: SvgPicture.asset(
        'assets/icons/hamburger.svg',
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
              hintText: 'Search by name',
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
    return Container(
      color: DefaultTheme.neutralLine,
      child: buildChatList(),
    );
  }

  Widget buildChatList() {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 16.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: buildOthersChatListItem(
            name: 'Athalia Putri',
            profileImageUrl:
                'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
            texts: [
              'hello',
              'Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.',
            ],
            mediaUrls: [
              'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
            ],
            repliedToWho: 'swimmingkiim',
            repliedToText:
                'Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.',
            repliedText: 'hello back!',
            sendAt: DateTime.now(),
            unreadCount: 1,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 12.0,
        );
      },
      itemCount: 30,
    );
  }

  Widget buildOthersChatListItem({
    required String name,
    required String profileImageUrl,
    required DateTime sendAt,
    required int unreadCount,
    List<String>? texts,
    List<String>? mediaUrls,
    String? repliedToWho,
    String? repliedToText,
    String? repliedText,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 4.0,
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50.0),
                ),
                child: Image.network(
                  profileImageUrl,
                  width: 36.0,
                  height: 36.0,
                  fit: BoxFit.cover,
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
              height: 5.0,
            ),
            if (mediaUrls != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: mediaUrls
                    .map((String url) => buildOthersMediaChatBubble(url))
                    .toList(),
              ),
            if (texts != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: texts
                    .map((String text) => buildOthersTextChatBubble(text))
                    .toList(),
              ),
            if (repliedToWho != null &&
                repliedToText != null &&
                repliedText != null)
              buildOthersReplayChatBubble(
                repliedToWho: repliedToWho,
                repliedToText: repliedToText,
                repliedText: repliedText,
              ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${sendAt.hour}:${sendAt.minute} ${sendAt.isAfter(sendAt.copyWith(hour: 12, minute: 0)) ? 'PM' : 'AM'}',
                  style: DefaultTheme.textTheme.labelLarge!.copyWith(
                    color: DefaultTheme.neutralDisabled,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                if (unreadCount > 0)
                  Text(
                    '$unreadCount',
                    style: DefaultTheme.textTheme.labelSmall!.copyWith(
                      color: DefaultTheme.brandDefault,
                    ),
                    textAlign: TextAlign.left,
                  ),
              ],
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }

  Widget buildOthersTextChatBubble(String text) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 5.0),
      constraints: const BoxConstraints(
        maxWidth: 337.0,
      ),
      decoration: const BoxDecoration(
        color: DefaultTheme.neutralWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
      ),
      child: Text(
        text,
        style: DefaultTheme.textTheme.bodyMedium!.copyWith(
          color: DefaultTheme.neutralActive,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget buildOthersMediaChatBubble(String url) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 5.0),
      constraints: const BoxConstraints(
        maxWidth: 337.0,
      ),
      decoration: const BoxDecoration(
        color: DefaultTheme.neutralWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(4.0),
        ),
        child: Image.network(
          url,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }

  Widget buildOthersReplayChatBubble({
    required String repliedToWho,
    required String repliedToText,
    required String repliedText,
  }) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 5.0),
      constraints: const BoxConstraints(
        maxWidth: 337.0,
      ),
      decoration: const BoxDecoration(
        color: DefaultTheme.neutralWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(4.0),
            ),
            child: Container(
              color: DefaultTheme.neutralLine,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: 4.0,
                      color: DefaultTheme.brandDefault,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      constraints: const BoxConstraints(
                        maxWidth: 300.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            repliedToWho,
                            style: DefaultTheme.textTheme.bodyMedium!.copyWith(
                              color: DefaultTheme.brandDefault,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            repliedToText,
                            style: DefaultTheme.textTheme.bodyMedium!.copyWith(
                              color: DefaultTheme.neutralBody,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            repliedText,
            style: DefaultTheme.textTheme.bodyMedium!.copyWith(
              color: DefaultTheme.neutralActive,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
