import 'package:solearium/app.dart';
import 'package:solearium/bootstrap.dart';
import 'package:solearium/src/core/config/app_config.dart';

void main() {
  AppConfig.init(
    flavor: AppFlavor.staging,
    apiBaseUrl: 'https://staging-api.solearium.com',
  );

  bootstrap(() => const App());
}
