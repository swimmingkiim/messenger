// flutter
import 'package:flutter_test/flutter_test.dart';

// packages
import 'package:messenger_core/messenger_core.dart';

void main() {
  test('User entity test', () {
    const String id = '12345678';
    const String name = 'Mary';
    const String phoneNumber = '821012345678';
    const Map<String, Object?> json = {
      'id': id,
      'name': name,
      'phoneNumber': phoneNumber,
    };
    const User testUser = User(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
    );
    final testUserFromJson = User.fromJson(json);

    expect(testUser, testUserFromJson);
  });
}
