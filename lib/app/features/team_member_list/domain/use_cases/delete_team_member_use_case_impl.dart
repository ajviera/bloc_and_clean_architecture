import 'package:injectable/injectable.dart';
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';
import 'package:team_members/app/features/team_member_list/domain/repositories/team_members_repository.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_member_request.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_team_member_use_case.dart';

/// A workload handler to fetch the patients assigned to a location.
@Injectable(as: DeleteMembersUseCase)
class DeleteMembersUseCaseImpl implements DeleteMembersUseCase {
  late final TeamMembersRepository _repository;

  DeleteMembersUseCaseImpl({
    required TeamMembersRepository repository,
  }) {
    _repository = repository;
  }

  @override
  Future<List<TeamMemberEntity>> call(DeleteMemberRequest deleteMemberRequest) {
    return _repository.deleteTeamMember(deleteMemberRequest);
  }
}
