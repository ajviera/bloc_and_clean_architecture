import 'package:go_router/go_router.dart';
import 'package:team_members/app/features/team_member_list/presentation/screens/team_member_list_provider.dart';
import 'package:team_members/app/features/team_member_list/presentation/screens/team_member_list_screen.dart';

// Add here the routes that will be added in the future.
class AppRouter {
  GoRouter generateRoute() {
    return GoRouter(
      routes: [
        GoRoute(
          path: TeamMemberListScreen.route,
          builder: (context, state) {
            return const TeamMemberListProvider();
          },
        )
      ],
    );
  }
}
