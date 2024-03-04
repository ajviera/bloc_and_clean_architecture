import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:team_members/app/core/helpers/errors.dart';
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';
import 'package:team_members/app/features/team_member_list/domain/repositories/team_members_repository.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/get_team_member_list_use_case_impl.dart';

import '../../../../../mocks/fake_data.dart';
import '../../../../../mocks/mocks.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  var fakeData = FakeData();
  late final List<TeamMemberEntity> teamMembersList;
  MockTeamMembersRepositoryImpl mockRepositoryImpl =
      MockTeamMembersRepositoryImpl();
  late GetMembersUseCaseImpl useCase;
  final GetIt serviceLocator = GetIt.instance;

  setUpAll(() async {
    await fakeData.init();
    teamMembersList = fakeData.teamMembersList;

    serviceLocator
      ..pushNewScope()
      ..registerSingleton<TeamMembersRepository>(mockRepositoryImpl);
  });

  setUp(() {
    useCase = GetMembersUseCaseImpl(repository: mockRepositoryImpl);
  });

  tearDownAll(() => serviceLocator.popScope());

  group('GetMembersUseCase', () {
    group('WHEN getTeamMembers', () {
      test('THEN the response is not empty', () async {
        when(
          mockRepositoryImpl.getTeamMembers(),
        ).thenAnswer(
          (_) async => teamMembersList,
        );

        final response = await useCase.call();
        expect(response, teamMembersList);
      });
    });
    test('THEN throw an TeamMembersBadResponseException', () async {
      when(
        mockRepositoryImpl.getTeamMembers(),
      ).thenAnswer(
        (_) async => throw TeamMembersBadResponseException(message: 'Error'),
      );

      expect(
        () => useCase.call(),
        throwsA(
          const TypeMatcher<TeamMembersBadResponseException>(),
        ),
      );
    });
  });
}
