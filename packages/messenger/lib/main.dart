// flutter
import 'package:flutter/material.dart';

// apps
import 'package:messenger/src/apps/apps.dart';

// configurations
import 'package:messenger/src/configurations/configurations.dart';

Future<void> main() async {
  await configureUrlStrategy();
  runApp(const MessengerApp());
}
