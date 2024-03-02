import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_member_request.dart';

abstract class DeleteMembersUseCase {
  Future<List<TeamMemberEntity>> call(DeleteMemberRequest deleteMemberRequest);
}
