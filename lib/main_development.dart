import 'package:get_it/get_it.dart';
import 'package:ants_companion/bootstrap/bootstrap.dart';
import 'package:ants_companion/config/config.dart';
import 'package:ants_companion/config/development_config.dart';

void main() async {
  GetIt.I.registerSingleton<Config>(DevelopmentConfig());
  bootstrap();
}
