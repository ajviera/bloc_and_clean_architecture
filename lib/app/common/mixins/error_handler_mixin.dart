import 'package:logger/logger.dart';
import 'package:team_members/app/core/di/di.dart';

// The idea of this mixin is to give the possibility to add in the future
// a service for error tracking or to do whatever is necessary with them.
mixin ErrorHandlerMixin {
  void logError(e) {
    serviceLocator<Logger>().e(e);
  }
}
