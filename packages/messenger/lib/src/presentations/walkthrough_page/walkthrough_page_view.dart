// flutter
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:messenger/src/routes/routes.dart';

// themes
import 'package:messenger/src/themes/themes.dart';

class WalkthroughPageView extends StatelessWidget {
  const WalkthroughPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          buildGuideline(),
          const Spacer(),
          buildTermsAndPrivacyPolicyButton(),
          const SizedBox(
            height: 18.0,
          ),
          buildStartMessagingButton(),
          const SizedBox(
            height: 54.0,
          ),
        ],
      ),
    );
  }

  Widget buildGuideline() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildGuidelineImage(),
        const SizedBox(
          height: 42.0,
        ),
        buildGuidelineText(),
      ],
    );
  }

  Widget buildGuidelineImage() {
    return Image.asset(
      'assets/images/Illustration.png',
      width: 262.0,
      height: 271.0,
    );
  }

  Widget buildGuidelineText() {
    return Builder(builder: (BuildContext context) {
      return Text(
        'Connect easily with\nyour family and friends\nover countries',
        style: DefaultTheme.textTheme.headlineMedium,
        textAlign: TextAlign.center,
      );
    });
  }

  Widget buildTermsAndPrivacyPolicyButton() {
    return Builder(builder: (BuildContext context) {
      return InkWell(
        // TODO: Implement onTap function
        onTap: () {},
        child: Text(
          'Terms & Privacy Policy',
          style: DefaultTheme.textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      );
    });
  }

  Widget buildStartMessagingButton() {
    return Builder(builder: (BuildContext context) {
      return InkWell(
        onTap: () => context.push(RoutePath.walkthroughVerificationPhoneNumber),
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
            'Start Messaging',
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
