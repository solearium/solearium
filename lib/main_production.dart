import 'package:solearium/app.dart';
import 'package:solearium/bootstrap.dart';
import 'package:solearium/src/core/config/app_config.dart';

void main() {
  AppConfig.init(
    flavor: AppFlavor.production,
    apiBaseUrl: 'https://api.solearium.com',
  );

  bootstrap(() => const App());
}
