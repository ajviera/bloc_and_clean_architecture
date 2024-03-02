import 'package:logger/logger.dart';
import 'package:team_members/app/core/di/di.dart';

mixin ErrorHandlerMixin {
  void logError(e) {
    serviceLocator<Logger>().e(e);
  }
}
