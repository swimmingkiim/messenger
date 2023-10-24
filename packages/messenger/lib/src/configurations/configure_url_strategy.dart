// flutter
import 'package:flutter_web_plugins/url_strategy.dart';

// packages
import 'package:go_router/go_router.dart';

Future<void> configureUrlStrategy() async {
  usePathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;
}
