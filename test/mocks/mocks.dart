import 'package:bloc_test/bloc_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:team_members/app/core/services/file_service.dart';
import 'package:team_members/app/features/team_member_list/data/api/api_client_impl.dart';
import 'package:team_members/app/features/team_member_list/data/repositories/team_members_repository_impl.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_team_member_use_case.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/get_team_member_list_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:team_members/app/features/team_member_list/presentation/bloc/team_member_list_bloc.dart';

@GenerateMocks([FileService])
class FileServicesMockHelper {}

@GenerateMocks([ApiClientImpl])
class ApiClientImplMockHelper {}

@GenerateMocks([TeamMembersRepositoryImpl])
class TeamMembersRepositoryImplMockHelper {}

class MockGetMembersUseCase extends Mock implements GetMembersUseCase {}

class MockDeleteMembersUseCase extends Mock implements DeleteMembersUseCase {}

class MockLogger extends Mock implements Logger {}

class MockTeamMemberListBloc
    extends MockBloc<TeamMemberListEvent, TeamMemberListState>
    implements TeamMemberListBloc {}
