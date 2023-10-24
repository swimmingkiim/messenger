// flutter
import 'package:flutter/material.dart';

// packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

// routes
import 'package:messenger/src/routes/routes.dart';

// themes
import 'package:messenger/src/themes/themes.dart';

class VerificationPinNumberPageView extends StatelessWidget {
  const VerificationPinNumberPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            buildNumberKeyboard(),
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
      'We have sent you a SMS with the code\nto +82 0000-0000-0000',
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

  Widget buildNumberKeyboard() {
    return Container(
      height: 308.0,
      color: DefaultTheme.neutralOffWhite,
      padding: const EdgeInsets.only(
        top: 16.0,
        bottom: 24.0,
        left: 14.0,
        right: 15.0,
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildNumberKey(1),
              const SizedBox(
                width: 8.0,
              ),
              buildNumberKey(2),
              const SizedBox(
                width: 8.0,
              ),
              buildNumberKey(3),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildNumberKey(4),
              const SizedBox(
                width: 8.0,
              ),
              buildNumberKey(5),
              const SizedBox(
                width: 8.0,
              ),
              buildNumberKey(6),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildNumberKey(7),
              const SizedBox(
                width: 8.0,
              ),
              buildNumberKey(8),
              const SizedBox(
                width: 8.0,
              ),
              buildNumberKey(9),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildEmptyKey(),
              const SizedBox(
                width: 8.0,
              ),
              buildNumberKey(0),
              const SizedBox(
                width: 8.0,
              ),
              buildDeleteKey(),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
        ],
      ),
    );
  }

  Widget buildNumberKey(int number) {
    return InkWell(
      // TODO: Implement logic when number keypad is tapped
      onTap: () {},
      child: SizedBox(
        width: 110.0,
        height: 48.0,
        child: Center(
          child: Text(
            '$number',
            style: DefaultTheme.textTheme.headlineMedium!.copyWith(
              color: DefaultTheme.neutralActive,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget buildEmptyKey() {
    return const SizedBox(
      width: 110.0,
      height: 48.0,
    );
  }

  Widget buildDeleteKey() {
    return InkWell(
      // TODO: Implement logic when delete keypad is tapped
      onTap: () {},
      child: SizedBox(
        width: 110.0,
        height: 48.0,
        child: Center(
          child: SvgPicture.asset(
            'assets/icons/backspace.svg',
            width: 32.0,
            height: 32.0,
          ),
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
        // TODO: Replace with real resend action
        onTap: () => context.push(RoutePath.walkthroughProfileAccount),
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
