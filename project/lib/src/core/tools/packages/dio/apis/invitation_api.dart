class InvitationApi {
  static String searchUser({required int userId}) =>
      '/api/clients/$userId/search/';

  static String sendInvitation({required int questId}) =>
      '/api/clients/$questId/send-friend-request/';

  static String fetchAllInvitations({required int userId}) =>
      '/api/clients/$userId/friend-requests/';

  static String acceptInvitation({
    required int userId,
    required int requestId,
  }) => '/api/clients/$userId/accept-friend-request/$requestId/';

  static String rejectInvitation({
    required int userId,
    required int requestId,
  }) => '/api/clients/$userId/reject-friend-request/$requestId/';

  static String fetchAllFriends({required int userId}) =>
      '/api/clients/$userId/friends/';

  static String fetchAllRejectedInvitations({required int userId}) =>
      '/api/clients/$userId/rejected-friend-requests/';

  static String removeFromFriendList({required int friendId}) =>
      '/api/clients/$friendId/remove-friend/';
}
