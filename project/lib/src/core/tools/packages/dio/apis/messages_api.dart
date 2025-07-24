class MessagesApi {
  //* group MessagesApi
  static var createGroupMessagesApi = '/api/group-messages/';
  static var fetchGroupMessagesApi = '/api/group-messages/';
  static String fetchGroupMessagesApiByIdApi(int groupId) =>
      '/api/group-messages/$groupId/';
  static String updateGroupMessagesApiByIdApi(int groupId) =>
      '/api/group-messages/$groupId/';
  static String patchGroupMessagesApiByIdApi(int groupId) =>
      '/api/group-messages/$groupId/';
  static String deleteGroupMessagesApiByIdApi(int groupId) =>
      '/api/group-messages/$groupId/';

  static String markAsReadGroupMessagesApi(messageId) =>
      '/api/messages/mark-group-message-read/$messageId/';

  //* Messages Api
  static var fetchUnreadMessagesApi = '/api/messages/unread-messages/';
  static var fetchAllMessagesApi = '/api/messages/all-messages/';

  //* private Messages Api

  static String fetchAllMessagesOfUserApi(int userId) =>
      '/api/clients/$userId/messages/';

  static String fetchOneToOneMessageApi(int receiverId) => '/api/messages/';
}
