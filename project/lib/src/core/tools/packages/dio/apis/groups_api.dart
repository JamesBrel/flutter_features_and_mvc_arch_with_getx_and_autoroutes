class GroupsApi {
  static const createOrfetchAndSearchGroupsApi = "/api/groups-discussion/";
  static const fetchGroupsByInterestApi = "/api/clients/groups-by-interests/";

  static String DetailOfGroupsApi({required int groupId}) =>
      '/api/groups-discussion/$groupId/';

  static String joinGroupsApi({required int userId}) =>
      '/api/clients/$userId/update-groups/';

  static String leaveTheGroupApi({required int userId, required int groupId}) =>
      '/api/clients/$userId/leave-group/$groupId/';

  static String deleteGroupApi({required int groupId}) =>
      '/api/groups-discussion/$groupId';
}
