import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:team_members/app/core/helpers/errors.dart';
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';
import 'package:team_members/app/features/team_member_list/domain/repositories/team_members_repository.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_member_request.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_team_member_use_case_impl.dart';

import '../../../../../mocks/fake_data.dart';
import '../../../../../mocks/mocks.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  var fakeData = FakeData();
  late final List<TeamMemberEntity> teamMembersList;
  MockTeamMembersRepositoryImpl mockRepositoryImpl =
      MockTeamMembersRepositoryImpl();
  late DeleteMembersUseCaseImpl useCase;
  final GetIt serviceLocator = GetIt.instance;
  late final TeamMemberEntity member;

  setUpAll(() async {
    await fakeData.init();
    teamMembersList = fakeData.teamMembersList;
    member = teamMembersList.first;
    serviceLocator
      ..pushNewScope()
      ..registerSingleton<TeamMembersRepository>(mockRepositoryImpl);
  });

  setUp(() {
    useCase = DeleteMembersUseCaseImpl(repository: mockRepositoryImpl);
  });

  tearDownAll(() => serviceLocator.popScope());

  group('DeleteMembersUseCase', () {
    group('WHEN call', () {
      test('THEN the response is not empty', () async {
        var request = DeleteMemberRequest(member.id);
        when(
          mockRepositoryImpl.deleteTeamMember(request),
        ).thenAnswer(
          (_) async => teamMembersList,
        );

        final response = await useCase.call(request);
        expect(response, teamMembersList);
      });
    });

    test('THEN throw an TeamMembersBadResponseException', () async {
      var request = DeleteMemberRequest(member.id);
      when(
        mockRepositoryImpl.deleteTeamMember(request),
      ).thenAnswer(
        (_) async => throw TeamMembersBadResponseException(message: 'Error'),
      );

      expect(
        () => useCase.call(request),
        throwsA(
          const TypeMatcher<TeamMembersBadResponseException>(),
        ),
      );
    });
  });
}
