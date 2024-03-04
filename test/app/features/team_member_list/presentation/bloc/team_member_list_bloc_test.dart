import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_member_request.dart';
import 'package:team_members/app/features/team_member_list/presentation/bloc/team_member_list_bloc.dart';

import '../../../../../mocks/fake_data.dart';
import '../../../../../mocks/mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final GetIt serviceLocator = GetIt.instance;
  var fakeData = FakeData();
  late final List<TeamMemberEntity> teamMembersList;
  late final TeamMemberEntity member;

  setUpAll(() async {
    await fakeData.init();
    teamMembersList = fakeData.teamMembersList;
    member = teamMembersList.first;

    serviceLocator
      ..pushNewScope()
      ..registerSingleton<Logger>(MockLogger());

    registerFallbackValue(DeleteMemberRequest(member.id));
  });

  tearDownAll(() => serviceLocator.popScope());

  group('PatientListBloc', () {
    late MockGetMembersUseCase mockGetMembersUseCase;
    late MockDeleteMembersUseCase mockDeleteMembersUseCase;

    setUp(() {
      mockGetMembersUseCase = MockGetMembersUseCase();
      mockDeleteMembersUseCase = MockDeleteMembersUseCase();
    });

    blocTest<TeamMemberListBloc, TeamMemberListState>(
      'emits [GetTeamMemberListState] with TeamMembers list when TeamMemberListEvent is started',
      build: () {
        when(
          () => mockGetMembersUseCase.call(),
        ).thenAnswer((_) async => teamMembersList);

        return TeamMemberListBloc(
          mockGetMembersUseCase,
          mockDeleteMembersUseCase,
        );
      },
      act: (bloc) => bloc.add(const TeamMemberListEvent.started()),
      expect: () => [
        const TeamMemberListState(status: Status.loading),
        TeamMemberListState(
          status: Status.success,
          teamMembers: teamMembersList,
        ),
      ],
    );

    blocTest<TeamMemberListBloc, TeamMemberListState>(
      'emits [TeamMemberListErrorState] with Expection when TeamMemberListEvent is started',
      build: () {
        when(
          () => mockGetMembersUseCase.call(),
        ).thenAnswer((_) async => throw Exception());

        return TeamMemberListBloc(
          mockGetMembersUseCase,
          mockDeleteMembersUseCase,
        );
      },
      act: (bloc) => bloc.add(const TeamMemberListEvent.started()),
      expect: () => [
        const TeamMemberListState(status: Status.loading),
        const TeamMemberListState(
          status: Status.failure,
          errorMessage: 'Something Went Wrong',
        ),
      ],
    );

    blocTest<TeamMemberListBloc, TeamMemberListState>(
      'emits [GetTeamMemberListState] with TeamMembers list without a deleted member when TeamMemberListEvent is deleteMember',
      build: () {
        when(
          () => mockDeleteMembersUseCase.call(any()),
        ).thenAnswer((_) async => teamMembersList);

        teamMembersList.removeWhere((item) => item.id == member.id);
        return TeamMemberListBloc(
          mockGetMembersUseCase,
          mockDeleteMembersUseCase,
        );
      },
      act: (bloc) => bloc.add(
        TeamMemberListEvent.deleteMember(teamMember: member),
      ),
      expect: () => [
        const TeamMemberListState(status: Status.loading),
        TeamMemberListState(
          status: Status.success,
          teamMembers: teamMembersList,
        ),
      ],
    );

    blocTest<TeamMemberListBloc, TeamMemberListState>(
      'emits [TeamMemberListErrorState] with Expection when TeamMemberListEvent is deleteMember',
      build: () {
        when(
          () => mockDeleteMembersUseCase.call(any()),
        ).thenAnswer((_) async => throw Exception());

        teamMembersList.removeWhere((item) => item.id == member.id);
        return TeamMemberListBloc(
          mockGetMembersUseCase,
          mockDeleteMembersUseCase,
        );
      },
      act: (bloc) => bloc.add(
        TeamMemberListEvent.deleteMember(teamMember: member),
      ),
      expect: () => [
        const TeamMemberListState(status: Status.loading),
        const TeamMemberListState(
          status: Status.failure,
          errorMessage: 'Something Went Wrong',
        ),
      ],
    );
  });
}
