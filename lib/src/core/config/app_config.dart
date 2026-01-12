enum AppFlavor { development, staging, production }

class AppConfig {
  AppConfig({required this.flavor, required this.apiBaseUrl});
  final AppFlavor flavor;
  final String apiBaseUrl;

  static late AppConfig _instance;

  static void init({required AppFlavor flavor, required String apiBaseUrl}) {
    _instance = AppConfig(flavor: flavor, apiBaseUrl: apiBaseUrl);
  }

  static AppConfig get instance => _instance;

  bool get isDevelopment => flavor == AppFlavor.development;
  bool get isProduction => flavor == AppFlavor.production;
}
