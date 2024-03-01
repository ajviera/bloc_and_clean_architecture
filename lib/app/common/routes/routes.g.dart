// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $teamMembersListRoute,
    ];

RouteBase get $teamMembersListRoute => GoRouteData.$route(
      path: '/',
      factory: $TeamMembersListRouteExtension._fromState,
    );

extension $TeamMembersListRouteExtension on TeamMembersListRoute {
  static TeamMembersListRoute _fromState(GoRouterState state) =>
      TeamMembersListRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
