class FeedApi {
  static var createOrGetFeed = '/api/actualites/';
  static String shareFeed(int feedId) => '/api/actualites/$feedId/share/';
  static String repostFeed(int feedId) => '/api/actualites/$feedId/repost/';
  static String likeFeed(int feedId) => '/api/actualites/$feedId/like/';
  static String disLikeFeed(int feedId) => '/api/actualites/$feedId/dislike/';
}
