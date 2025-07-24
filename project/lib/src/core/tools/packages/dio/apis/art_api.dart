class ArtApi {
  static const createOrfetchAndSearchArtApi = '/api/oeuvres-art/';
  static String fetchArtWorkCreatedByUserApi({required int userId}) =>
      '/api/clients/$userId/created-oeuvres/';

  static String fetchArtWorkDetailsApi({required int oeuvreId}) =>
      '/api/oeuvres-art/$oeuvreId/';

  static String editOrDeleteArtworkApi({required int oeuvreId}) =>
      '/api/oeuvres-art/$oeuvreId/';

  static String saveInLibrayApi({required int oeuvreId, required int userId}) =>
      '/api/clients/$userId/save-oeuvre/$oeuvreId/';

  static String removeInLibrayApi({
    required int oeuvreId,
    required int userId,
  }) => '/api/clients/$userId/unsave-oeuvre/$oeuvreId/';

  static const fetchAllArtwork = '/api/oeuvres-art/';
}
