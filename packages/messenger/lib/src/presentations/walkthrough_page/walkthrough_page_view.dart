// flutter
import 'package:flutter/material.dart';

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
    return Container(
      color: Colors.red,
      width: 262.0,
      height: 271.0,
    );
  }

  Widget buildGuidelineText() {
    return Container(
      color: Colors.blue,
      width: 280.0,
      height: 90.0,
    );
  }

  Widget buildTermsAndPrivacyPolicyButton() {
    return Container(
      color: Colors.orange,
      width: 148.0,
      height: 24.0,
    );
  }

  Widget buildStartMessagingButton() {
    return Container(
      color: Colors.pink,
      width: 327.0,
      height: 52.0,
    );
  }
}
