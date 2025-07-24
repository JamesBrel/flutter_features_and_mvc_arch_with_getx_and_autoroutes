class InterestsApi {
  static const createAndFetchOrSearchInterestsApi = "/api/centres-interest/";
  static String selectedInterestsApi({required int userId}) =>
      '/api/clients/$userId/update-interests/';

  static String removeInterestsSelectedApi({
    required int userId,
    required int interestId,
  }) => '/api/clients/$userId/remove-interest/$interestId/';
  static String deleteInterestsApi({required int interestId}) =>
      '/api/centres-interest/$interestId';
}
