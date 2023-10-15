// flutter
import 'package:flutter/material.dart';

// packages
import 'package:flag/flag.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

// themes
import 'package:messenger/src/themes/themes.dart';

class VerificationPinNumberPageView extends StatelessWidget {
  const VerificationPinNumberPageView({super.key});

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
            buildGuideline(),
            const SizedBox(
              height: 48.0,
            ),
            buildPinNumberField(),
            const Spacer(),
            buildResendCodeButton(),
            const SizedBox(
              height: 32.0,
            ),
          ],
        ),
      );
    });
  }

  Widget buildGuideline() {
    return Builder(builder: (BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildGuidelineTitle(),
          const SizedBox(
            height: 8.0,
          ),
          buildGuidelineSubTitle(),
        ],
      );
    });
  }

  Widget buildGuidelineTitle() {
    return Text(
      'Enter Code',
      style: DefaultTheme.textTheme.headlineMedium,
      textAlign: TextAlign.center,
    );
  }

  Widget buildGuidelineSubTitle() {
    // TODO: Change to real phone number
    return Text(
      'We have sent you an SMS with the code\nto +82 0000-0000-0000',
      style: DefaultTheme.textTheme.bodyMedium!.copyWith(height: 2.4),
      textAlign: TextAlign.center,
    );
  }

  Widget buildPinNumberField() {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 248.0,
        height: 40.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildKnownPinNumber(1),
            const SizedBox(
              width: 40.0,
            ),
            buildKnownPinNumber(7),
            const SizedBox(
              width: 40.0,
            ),
            buildUnknownPinNumber(),
            const SizedBox(
              width: 40.0,
            ),
            buildUnknownPinNumber(),
          ],
        ),
      ),
    );
  }

  Widget buildUnknownPinNumber() {
    return SizedBox(
      width: 32.0,
      height: 40.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 4.0,
        ),
        child: Container(
          width: 24.0,
          height: 24.0,
          decoration: const BoxDecoration(
            color: DefaultTheme.neutralLine,
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildKnownPinNumber(int number) {
    return SizedBox(
      width: 32.0,
      height: 40.0,
      child: Center(
        child: Text(
          '$number',
          style: DefaultTheme.textTheme.headlineLarge!.copyWith(
            color: DefaultTheme.neutralActive,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget buildResendCodeButton() {
    return Builder(builder: (BuildContext context) {
      return InkWell(
        onTap: () {},
        child: Container(
          width: 327.0,
          height: 52.0,
          alignment: Alignment.center,
          child: Text(
            'Resend Code',
            style: DefaultTheme.textTheme.titleMedium!.copyWith(
              color: DefaultTheme.brandDefault,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    });
  }
}
