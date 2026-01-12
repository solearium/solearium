import 'package:solearium/app.dart';
import 'package:solearium/bootstrap.dart';
import 'package:solearium/src/core/config/app_config.dart';

void main() {
  AppConfig.init(
    flavor: AppFlavor.development,
    apiBaseUrl: 'https://dev-api.solearium.com',
  );
  
  bootstrap(() => const App());
}
