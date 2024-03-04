import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:team_members/app/core/helpers/errors.dart';
import 'package:team_members/app/core/services/file_service.dart';
import 'package:team_members/app/features/team_member_list/data/api/api_client.dart';
import 'package:team_members/app/features/team_member_list/data/api/api_client_impl.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_member_request.dart';

import '../../../../../mocks/mocks.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late ApiClient apiClient;
  final GetIt serviceLocator = GetIt.instance;

  MockFileService mockFileService = MockFileService();

  setUpAll(() {
    serviceLocator
      ..pushNewScope()
      ..registerSingleton<FileService>(mockFileService);
  });

  setUp(() {
    apiClient = ApiClientImpl(service: serviceLocator<FileService>());
  });

  tearDownAll(() => serviceLocator.popScope());

  group('ApiClientImpl', () {
    group('WHEN getTeamMembers', () {
      test('THEN the response is not empty', () async {
        when(
          mockFileService.getJson(),
        ).thenAnswer(
          (_) async => FileService().getJson(),
        );

        final response = await apiClient.getTeamMembers();

        expect(response, isNotEmpty);
      });

      test('THEN throw an TeamMembersBadResponseException', () async {
        when(
          mockFileService.getJson(),
        ).thenAnswer(
          (_) async => throw TeamMembersBadResponseException(message: 'Error'),
        );

        expect(
          () => apiClient.getTeamMembers(),
          throwsA(
            const TypeMatcher<TeamMembersBadResponseException>(),
          ),
        );
      });
    });

    group('WHEN deleteTeamMember', () {
      test('THEN the response is not empty', () async {
        final response = await apiClient.deleteTeamMember(
          memberRequest: const DeleteMemberRequest('1'),
        );

        expect(response, isEmpty);
      });
    });
  });
}
