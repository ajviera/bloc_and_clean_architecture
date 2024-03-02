import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:team_members/app/core/di/di.config.dart';

final GetIt serviceLocator = GetIt.instance;

@injectableInit
void configureDependencies() {
  serviceLocator.init();
  serviceLocator.registerLazySingleton<Logger>(() => Logger());
}
