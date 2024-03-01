import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';

abstract class TeamMembersRepository {
  Future<List<TeamMemberEntity>> getTeamMembers();
  Future<List<TeamMemberEntity>> deleteTeamMember(TeamMemberEntity member);
}
