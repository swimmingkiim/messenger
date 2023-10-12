// flutter
import 'package:flutter_test/flutter_test.dart';

// packages
import 'package:messenger_core/messenger_core.dart';

void main() {
  group('MessageVisiblity Entity Test', () {
    const String testUserId = '12345678';
    const String testUserName = 'Mary';
    const String testUserPhoneNumber = '821012345678';
    const String testChatId = '00000001';
    const String testChatName = '$testUserName created room';
    const String testMessageId = 'testMessageId';
    const String testMessageText = 'hello world';
    const String testMessageVisiblityId = 'testMessageVisiblityId';
    final Map<String, Object?> messageVisiblityJson = {
      'id': testMessageVisiblityId,
      'chatId': testChatId,
      'messageId': testMessageId,
    };
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
    final Message message = Message(
      id: testMessageId,
      chatId: chat.id,
      senderId: testUser.id,
      text: testMessageText,
    );

    test('Test FromJson', () {
      final MessageVisiblity messageVisiblity = MessageVisiblity(
        id: testMessageVisiblityId,
        chatId: chat.id,
        messageId: message.id,
      );
      final MessageVisiblity messageVisiblityFromJson =
          MessageVisiblity.fromJson(messageVisiblityJson);

      expect(messageVisiblity, messageVisiblityFromJson);
      expect(messageVisiblity.isVisible, true);
      expect(messageVisiblity.isDeletedLocally, false);
      expect(messageVisiblity.isDeletedGlobally, false);
    });
  });
}
