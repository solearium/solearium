class ApiEndpoints {
  const ApiEndpoints._();

  // Auth
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String logout = '/auth/logout';
  static const String refreshToken = '/auth/refresh';

  // User
  static const String userProfile = '/users/profile';
  static const String updateProfile = '/users/profile/update';

  // Products (Example)
  static const String products = '/products';
  static const String productDetails = '/products/details';
}
