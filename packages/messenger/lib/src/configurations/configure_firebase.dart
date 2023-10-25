// packages
import 'package:firebase_core/firebase_core.dart';

// firebase
import 'package:messenger/firebase_options.dart';

Future<void> configureFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
