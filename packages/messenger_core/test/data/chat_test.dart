// flutter
import 'package:flutter_test/flutter_test.dart';

// packages
import 'package:messenger_core/messenger_core.dart';

void main() {
  group('Chat Entity Test', () {
    const String testUserId = '12345678';
    const String testUserName = 'Mary';
    const String testUserPhoneNumber = '821012345678';
    const String testChatId = '00000001';
    const String testChatName = '$testUserName created room';
    const Map<String, Object?> chatJson = {
      'id': testChatId,
      'creatorId': testUserId,
      'name': testChatName,
    };
    const User testUser = User(
      id: testUserId,
      name: testUserName,
      phoneNumber: testUserPhoneNumber,
    );

    test('Test FromJson', () {
      final Chat chat = Chat(
        id: testChatId,
        creatorId: testUser.id,
        name: testChatName,
      );
      final Chat chatFromJson = Chat.fromJson(chatJson);

      expect(chat, chatFromJson);
    });
  });
}
