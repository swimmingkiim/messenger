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
      height: double.maxFinite,
      color: DefaultTheme.neutralLine,
      child: Column(children: [
        Expanded(
          child: buildChatList(),
        ),
        buildChatInputBox(),
      ]),
    );
  }

  Widget buildChatList() {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 16.0,
      ),
      children: [
        buildOthersChatListItem(
          name: 'Athalia Putri',
          profileImageUrl:
              'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          text: 'hello',
          // mediaUrl:
          //     'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          // repliedToWho: 'swimmingkiim',
          // repliedToText:
          //     'Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.',
          // repliedText: 'hello back!',
          sendAt: DateTime.now(),
          unreadCount: 1,
          onlyShowBubble: false,
        ),
        buildOthersChatListItem(
          name: 'Athalia Putri',
          profileImageUrl:
              'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          // text: 'hello',
          mediaUrl:
              'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          // repliedToWho: 'swimmingkiim',
          // repliedToText:
          //     'Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.',
          // repliedText: 'hello back!',
          sendAt: DateTime.now(),
          unreadCount: 1,
          onlyShowBubble: true,
        ),
        buildOthersChatListItem(
          name: 'Athalia Putri',
          profileImageUrl:
              'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          // text: 'hello',
          // mediaUrl:
          //     'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          repliedToWho: 'swimmingkiim',
          repliedToText:
              'Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.',
          repliedText: 'hello back!',
          sendAt: DateTime.now(),
          unreadCount: 1,
          onlyShowBubble: true,
        ),
        buildMyChatListItem(
          text: 'hello',
          // mediaUrl:
          //     'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          // repliedToWho: 'swimmingkiim',
          // repliedToText:
          //     'Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.',
          // repliedText: 'hello back!',
          sendAt: DateTime.now(),
          unreadCount: 1,
          onlyShowBubble: false,
        ),
        buildMyChatListItem(
          // text: 'hello',
          mediaUrl:
              'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          // repliedToWho: 'swimmingkiim',
          // repliedToText:
          //     'Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.',
          // repliedText: 'hello back!',
          sendAt: DateTime.now(),
          unreadCount: 1,
          onlyShowBubble: true,
        ),
        buildMyChatListItem(
          // text: 'hello',
          // mediaUrl:
          //     'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          repliedToWho: 'swimmingkiim',
          repliedToText:
              'Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.',
          repliedText: 'hello back!',
          sendAt: DateTime.now(),
          unreadCount: 1,
          onlyShowBubble: true,
        ),
        buildOthersChatListItem(
          name: 'Athalia Putri',
          profileImageUrl:
              'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          text: 'hello',
          // mediaUrl:
          //     'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          // repliedToWho: 'swimmingkiim',
          // repliedToText:
          //     'Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.',
          // repliedText: 'hello back!',
          sendAt: DateTime.now(),
          unreadCount: 1,
          onlyShowBubble: false,
        ),
        buildOthersChatListItem(
          name: 'Athalia Putri',
          profileImageUrl:
              'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          text: 'How r u?',
          // mediaUrl:
          //     'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          // repliedToWho: 'swimmingkiim',
          // repliedToText:
          //     'Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.',
          // repliedText: 'hello back!',
          sendAt: DateTime.now(),
          unreadCount: 1,
          onlyShowBubble: false,
        ),
        buildMyChatListItem(
          // text: 'hello',
          // mediaUrl:
          //     'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          repliedToWho: 'Athalia Putri',
          repliedToText: 'How r u?',
          repliedText: 'Fine, Thank you, and you?',
          sendAt: DateTime.now(),
          unreadCount: 1,
          onlyShowBubble: false,
        ),
        buildOthersChatListItem(
          name: 'Athalia Putri',
          profileImageUrl:
              'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          text: 'hmmmmm.....',
          // mediaUrl:
          //     'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          // repliedToWho: 'Athalia Putri',
          // repliedToText: 'How r u?',
          // repliedText: 'Fine, Thank you, and you?',
          sendAt: DateTime.now(),
          unreadCount: 1,
          onlyShowBubble: false,
        ),
        buildMyChatListItem(
          text: 'What\'s wrong?',
          // mediaUrl:
          //     'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80',
          // repliedToWho: 'swimmingkiim',
          // repliedToText:
          //     'Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.',
          // repliedText: 'hello back!',
          sendAt: DateTime.now(),
          unreadCount: 1,
          onlyShowBubble: false,
        ),
      ],
    );
  }

  Widget buildOthersChatListItem({
    required String name,
    required String profileImageUrl,
    required DateTime sendAt,
    required int unreadCount,
    bool onlyShowBubble = false,
    String? text,
    String? mediaUrl,
    String? repliedToWho,
    String? repliedToText,
    String? repliedText,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (onlyShowBubble)
          const SizedBox(
            width: 40.0,
          )
        else
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
            if (onlyShowBubble)
              const SizedBox.shrink()
            else
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (mediaUrl != null)
                  buildOthersMediaChatBubble(mediaUrl)
                else if (text != null)
                  buildOthersTextChatBubble(text)
                else if (repliedToWho != null &&
                    repliedToText != null &&
                    repliedText != null)
                  buildOthersReplayChatBubble(
                    repliedToWho: repliedToWho,
                    repliedToText: repliedToText,
                    repliedText: repliedText,
                  ),
                const SizedBox(
                  width: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    '${sendAt.hour}:${sendAt.minute} ${sendAt.isAfter(sendAt.copyWith(hour: 12, minute: 0)) ? 'PM' : 'AM'}',
                    style: DefaultTheme.textTheme.labelLarge!.copyWith(
                      color: DefaultTheme.neutralDisabled,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                if (unreadCount > 0)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '$unreadCount',
                      style: DefaultTheme.textTheme.labelSmall!.copyWith(
                        color: DefaultTheme.brandDefault,
                      ),
                      textAlign: TextAlign.left,
                    ),
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
        maxWidth: 215.0,
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
        maxWidth: 215.0,
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
        maxWidth: 215.0,
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
                        maxWidth: 190.0,
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

  Widget buildMyChatListItem({
    required DateTime sendAt,
    required int unreadCount,
    bool onlyShowBubble = false,
    String? text,
    String? mediaUrl,
    String? repliedToWho,
    String? repliedToText,
    String? repliedText,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (unreadCount > 0)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '$unreadCount',
                      style: DefaultTheme.textTheme.labelSmall!.copyWith(
                        color: DefaultTheme.brandDefault,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                const SizedBox(
                  width: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    '${sendAt.hour}:${sendAt.minute} ${sendAt.isAfter(sendAt.copyWith(hour: 12, minute: 0)) ? 'PM' : 'AM'}',
                    style: DefaultTheme.textTheme.labelLarge!.copyWith(
                      color: DefaultTheme.neutralDisabled,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                if (mediaUrl != null)
                  buildMyMediaChatBubble(mediaUrl)
                else if (text != null)
                  buildMyTextChatBubble(text)
                else if (repliedToWho != null &&
                    repliedToText != null &&
                    repliedText != null)
                  buildMyReplayChatBubble(
                    repliedToWho: repliedToWho,
                    repliedToText: repliedToText,
                    repliedText: repliedText,
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget buildMyTextChatBubble(String text) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 5.0),
      constraints: const BoxConstraints(
        maxWidth: 215.0,
      ),
      decoration: const BoxDecoration(
        color: DefaultTheme.brandDefault,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
        ),
      ),
      child: Text(
        text,
        style: DefaultTheme.textTheme.bodyMedium!.copyWith(
          color: DefaultTheme.neutralWhite,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget buildMyMediaChatBubble(String url) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 5.0),
      constraints: const BoxConstraints(
        maxWidth: 215.0,
      ),
      decoration: const BoxDecoration(
        color: DefaultTheme.brandDefault,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
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

  Widget buildMyReplayChatBubble({
    required String repliedToWho,
    required String repliedToText,
    required String repliedText,
  }) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 5.0),
      constraints: const BoxConstraints(
        maxWidth: 215.0,
      ),
      decoration: const BoxDecoration(
        color: DefaultTheme.brandDefault,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
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
              color: DefaultTheme.brandDarkMode,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: 4.0,
                      color: DefaultTheme.neutralWhite,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      constraints: const BoxConstraints(
                        maxWidth: 190.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            repliedToWho,
                            style: DefaultTheme.textTheme.bodyMedium!.copyWith(
                              color: DefaultTheme.neutralWhite,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            repliedToText,
                            style: DefaultTheme.textTheme.bodyMedium!.copyWith(
                              color: DefaultTheme.neutralWhite,
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
              color: DefaultTheme.neutralWhite,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  Widget buildChatInputBox() {
    return Container(
      width: double.maxFinite,
      height: 83.46,
      color: DefaultTheme.neutralWhite,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 10.0,
        ),
        margin: const EdgeInsets.only(
          bottom: 27.46,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/plus.svg',
              width: 24.0,
              height: 24.0,
              colorFilter: const ColorFilter.mode(
                DefaultTheme.neutralDisabled,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            Flexible(
              child: Container(
                width: double.maxFinite,
                height: 36.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 6.0,
                ),
                decoration: const BoxDecoration(
                  color: DefaultTheme.neutralOffWhite,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                ),
                child: buildChatInputField(),
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            SvgPicture.asset(
              'assets/icons/send-alt-filled.svg',
              width: 24.0,
              height: 24.0,
              colorFilter: const ColorFilter.mode(
                DefaultTheme.brandDefault,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChatInputField() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Type Message',
        hintStyle: DefaultTheme.textTheme.bodyLarge!.copyWith(
          color: DefaultTheme.neutralDisabled,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
