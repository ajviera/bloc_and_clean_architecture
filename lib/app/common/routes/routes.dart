import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:team_members/app/features/team_member_list/presentation/screens/team_member_list_provider.dart';
import 'package:team_members/app/features/team_member_list/presentation/screens/team_member_list_screen.dart';

part 'routes.g.dart';

@TypedGoRoute<TeamMembersListRoute>(path: TeamMemberListScreen.route)
class TeamMembersListRoute extends GoRouteData {
  @override
  Widget build(context, state) => const TeamMemberListProvider();
}
