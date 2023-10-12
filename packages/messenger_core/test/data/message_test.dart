// flutter
import 'package:flutter_test/flutter_test.dart';

// packages
import 'package:messenger_core/messenger_core.dart';

void main() {
  group('Message Entity Test', () {
    const String testUserId = '12345678';
    const String testUserName = 'Mary';
    const String testUserPhoneNumber = '821012345678';
    const String testChatId = '00000001';
    const String testChatName = '$testUserName created room';
    const User testUser = User(
      id: testUserId,
      name: testUserName,
      phoneNumber: testUserPhoneNumber,
    );
    final Chat chat = Chat(
      id: testChatId,
      creatorId: testUser.id,
      name: testChatName,
    );

    test('Test FromJson', () {
      const String testMessageId = 'testMessageId';
      const String testMessageText = 'hello world';
      final Map<String, Object?> messageJson = {
        'id': testMessageId,
        'chatId': chat.id,
        'senderId': testUserId,
        'text': testMessageText,
      };
      final Message message = Message(
        id: testMessageId,
        chatId: chat.id,
        senderId: testUser.id,
        text: testMessageText,
      );
      final Message messageFromJson = Message.fromJson(messageJson);

      expect(message, messageFromJson);
      expect(message.readCount, 1);
      expect(message.repliedMessageId, null);
      expect(message.mediaUrls, null);
    });
  });
}
