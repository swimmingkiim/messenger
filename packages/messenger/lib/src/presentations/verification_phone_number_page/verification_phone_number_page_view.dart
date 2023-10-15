// flutter
import 'package:flutter/material.dart';

// packages
import 'package:flag/flag.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

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
            buildPhoneNumberField(),
            const Spacer(),
            buildContinueButton(),
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
      'Enter Your Phone Number',
      style: DefaultTheme.textTheme.headlineMedium,
      textAlign: TextAlign.center,
    );
  }

  Widget buildGuidelineSubTitle() {
    return Text(
      'Please confirm your country code and enter\nyour phone number',
      style: DefaultTheme.textTheme.bodyMedium!.copyWith(height: 2.4),
      textAlign: TextAlign.center,
    );
  }

  Widget buildPhoneNumberField() {
    return SizedBox(
      height: 48.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildPhoneNumberCountryCodeField(),
          const SizedBox(
            width: 8.0,
          ),
          buildPhoneNumberInput(),
        ],
      ),
    );
  }

  Widget buildPhoneNumberCountryCodeField() {
    return Container(
      width: 74.0,
      height: 36.0,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: DefaultTheme.neutralOffWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      child: Row(
        children: [
          Flag.fromCode(
            FlagsCode.KR,
            width: 24.0,
            height: 24.0,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Text(
            '+82',
            style: DefaultTheme.textTheme.bodyLarge!.copyWith(
              color: DefaultTheme.neutralDisabled,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPhoneNumberInput() {
    return Container(
      width: 245.0,
      height: 36.0,
      decoration: const BoxDecoration(
        color: DefaultTheme.neutralOffWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      child: TextField(
        keyboardType: const TextInputType.numberWithOptions(),
        decoration: InputDecoration(
          hintText: 'Phone Number',
          hintStyle: DefaultTheme.textTheme.bodyLarge!.copyWith(
            color: DefaultTheme.neutralDisabled,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget buildContinueButton() {
    return Builder(builder: (BuildContext context) {
      return InkWell(
        onTap: () {},
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
            'Continue',
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
