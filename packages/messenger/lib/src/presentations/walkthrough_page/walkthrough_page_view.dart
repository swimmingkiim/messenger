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
    return const Center(
      child: Text('this is walkthrough page placeholder.'),
    );
  }
}
