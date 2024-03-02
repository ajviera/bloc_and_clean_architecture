import 'package:team_members/app/features/team_member_list/data/api/api_client.dart';
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';
import 'package:team_members/app/features/team_member_list/domain/repositories/team_members_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_member_request.dart';

@LazySingleton(as: TeamMembersRepository)
class TeamMembersRepositoryImpl implements TeamMembersRepository {
  final ApiClient _api;

  TeamMembersRepositoryImpl({
    required ApiClient api,
  }) : _api = api;

  @override
  Future<List<TeamMemberEntity>> getTeamMembers() {
    return _api.getTeamMembers();
  }

  @override
  Future<List<TeamMemberEntity>> deleteTeamMember(
    DeleteMemberRequest deleteMemberRequest,
  ) {
    return _api.deleteTeamMember(memberRequest: deleteMemberRequest);
  }
}
