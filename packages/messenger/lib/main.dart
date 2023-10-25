// flutter
import 'package:flutter/material.dart';

// apps
import 'package:messenger/src/apps/apps.dart';

// configurations
import 'package:messenger/src/configurations/configurations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureUrlStrategy();
  await configureFirebase();
  runApp(const MessengerApp());
}
