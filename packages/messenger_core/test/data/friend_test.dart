// flutter
import 'package:flutter_test/flutter_test.dart';

// packages
import 'package:messenger_core/messenger_core.dart';

void main() {
  test('Friend entity test', () {
    const String testUserId = '12345678';
    const String testUserName = 'Mary';
    const String testUserPhoneNumber = '821012345678';
    const String testFriendUserId = '87654321';
    const String testFriendUserName = 'John';
    const String testFriendUserPhoneNumber = '821087654321';
    const String testFriendId = '00000000';
    const Map<String, Object?> friendRelationshipJson = {
      'id': testFriendId,
      'userId': testUserId,
      'friendId': testFriendUserId,
      'isBlocked': false,
      'isReported': false,
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
    final Friend friendRelationship = Friend(
      id: testFriendId,
      userId: testUser.id,
      friendId: testFriendUser.id,
    );
    final Friend friendRelationshipFromJson =
        Friend.fromJson(friendRelationshipJson);

    expect(friendRelationship, friendRelationshipFromJson);
  });
}
