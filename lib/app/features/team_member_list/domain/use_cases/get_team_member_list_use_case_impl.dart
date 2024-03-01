import 'package:injectable/injectable.dart';
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';
import 'package:team_members/app/features/team_member_list/domain/repositories/team_members_repository.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/get_team_member_list_use_case.dart';

/// A workload handler to fetch the patients assigned to a location.
@Injectable(as: GetMembersUseCase)
class GetMembersUseCaseImpl implements GetMembersUseCase {
  late final TeamMembersRepository _repository;

  GetMembersUseCaseImpl({
    required TeamMembersRepository repository,
  }) {
    _repository = repository;
  }

  @override
  Future<List<TeamMemberEntity>> call() {
    return _repository.getTeamMembers();
  }
}
