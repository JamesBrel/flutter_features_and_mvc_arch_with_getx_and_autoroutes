class Envs {
  static const env = String.fromEnvironment("ENV");
  static const baseUrl = String.fromEnvironment("BASE_URL");
  static const userId = String.fromEnvironment("USER_ID");
  static const userPassword = String.fromEnvironment("USER_PASSWORD");
  static const userAccessToken = String.fromEnvironment("USER_ACCESS_TOKEN");
  static const userRefreshToken = String.fromEnvironment("USER_REFRESH_TOKEN");
  static const supabaseUrl = String.fromEnvironment("SUPABASE_URL");
  static const supabaseAnonKey = String.fromEnvironment("SUPABASE_ANON_KEY");
}
