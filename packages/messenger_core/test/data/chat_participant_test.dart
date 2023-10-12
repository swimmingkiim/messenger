// flutter
import 'package:flutter_test/flutter_test.dart';

// packages
import 'package:messenger_core/messenger_core.dart';

void main() {
  group('ChatParticipant Entity Test', () {
    const String testUserId = '12345678';
    const String testUserName = 'Mary';
    const String testUserPhoneNumber = '821012345678';
    const String testFriendUserId = '87654321';
    const String testFriendUserName = 'John';
    const String testFriendUserPhoneNumber = '821087654321';
    const String testChatId = '00000001';
    const String testChatParticipantId = '000000011';
    const String testChatName = '$testUserName created room';
    const Map<String, Object?> chatParticipantJson = {
      'id': testChatParticipantId,
      'chatId': testChatId,
      'userId': testFriendUserId,
      'isNotificationMuted': false,
      'isPinned': false,
    };
    const User testUser = User(
      id: testUserId,
      name: testUserName,
      phoneNumber: testUserPhoneNumber,
    );
    final testFriendUser = testUser.copyWith(
      id: testFriendUserId,
      name: testFriendUserName,
      phoneNumber: testFriendUserPhoneNumber,
    );
    final Chat chat = Chat(
      id: testChatId,
      creatorId: testUser.id,
      name: testChatName,
    );

    test('Test FromJson', () {
      final ChatParticipant chatParticipant = ChatParticipant(
        id: testChatParticipantId,
        chatId: chat.id,
        userId: testFriendUser.id,
      );
      final ChatParticipant chatParticipantFromJson =
          ChatParticipant.fromJson(chatParticipantJson);

      expect(chatParticipant, chatParticipantFromJson);
      expect(chatParticipant.isNotificationMuted, false);
      expect(chatParticipant.isPinned, false);
    });
  });
}
