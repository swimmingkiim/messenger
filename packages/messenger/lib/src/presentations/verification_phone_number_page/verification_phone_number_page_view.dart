// flutter
import 'package:flutter/material.dart';

// themes
import 'package:messenger/src/themes/themes.dart';

class VerificationPhoneNumberPageView extends StatelessWidget {
  const VerificationPhoneNumberPageView({super.key});

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
      automaticallyImplyLeading: true,
    );
  }

  Widget buildBody() {
    return const Center(
      child: Text('this is VerificationPhoneNumberPageView placeholder.'),
    );
  }
}
