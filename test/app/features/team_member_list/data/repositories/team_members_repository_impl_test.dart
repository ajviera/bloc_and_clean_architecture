import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:team_members/app/core/helpers/errors.dart';
import 'package:team_members/app/features/team_member_list/data/api/api_client.dart';
import 'package:team_members/app/features/team_member_list/data/repositories/team_members_repository_impl.dart';
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';
import 'package:team_members/app/features/team_member_list/domain/repositories/team_members_repository.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_member_request.dart';

import '../../../../../mocks/fake_data.dart';
import '../../../../../mocks/mocks.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  var fakeData = FakeData();
  late final List<TeamMemberEntity> teamMembersList;
  MockApiClientImpl mockApiClient = MockApiClientImpl();
  late TeamMembersRepository repository;
  final GetIt serviceLocator = GetIt.instance;
  late final TeamMemberEntity member;

  setUpAll(() async {
    await fakeData.init();
    teamMembersList = fakeData.teamMembersList;
    member = teamMembersList.first;
    serviceLocator
      ..pushNewScope()
      ..registerSingleton<ApiClient>(mockApiClient);
  });

  setUp(() {
    repository = TeamMembersRepositoryImpl(api: mockApiClient);
  });

  tearDownAll(() => serviceLocator.popScope());

  group('TeamMembersRepository', () {
    group('WHEN getTeamMembers', () {
      test('THEN the response is not empty', () async {
        when(
          mockApiClient.getTeamMembers(),
        ).thenAnswer(
          (_) async => teamMembersList,
        );

        final response = await repository.getTeamMembers();
        expect(response, teamMembersList);
      });
    });

    test('THEN throw an TeamMembersBadResponseException', () async {
      when(
        mockApiClient.getTeamMembers(),
      ).thenAnswer(
        (_) async => throw TeamMembersBadResponseException(message: 'Error'),
      );

      expect(
        () => repository.getTeamMembers(),
        throwsA(
          const TypeMatcher<TeamMembersBadResponseException>(),
        ),
      );
    });

    group('WHEN deleteTeamMember', () {
      test('THEN the response is not empty', () async {
        var request = DeleteMemberRequest(member.id);
        when(
          mockApiClient.deleteTeamMember(
            memberRequest: request,
          ),
        ).thenAnswer(
          (_) async => teamMembersList,
        );

        final response = await repository.deleteTeamMember(request);
        expect(response, teamMembersList);
      });
    });

    test('THEN throw an TeamMembersBadResponseException', () async {
      var request = DeleteMemberRequest(member.id);
      when(
        mockApiClient.deleteTeamMember(
          memberRequest: request,
        ),
      ).thenAnswer(
        (_) async => throw TeamMembersBadResponseException(message: 'Error'),
      );

      expect(
        () => repository.deleteTeamMember(request),
        throwsA(
          const TypeMatcher<TeamMembersBadResponseException>(),
        ),
      );
    });
  });
}
