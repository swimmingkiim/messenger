// flutter
import 'package:flutter/material.dart';

// routes
import 'package:messenger/src/routes/routes.dart';

class MessengerApp extends StatelessWidget {
  const MessengerApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Messenger',
      routerConfig: router,
    );
  }
}
