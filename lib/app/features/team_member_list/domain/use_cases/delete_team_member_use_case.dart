import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';

abstract class DeleteMembersUseCase {
  Future<List<TeamMemberEntity>> call(TeamMemberEntity member);
}
