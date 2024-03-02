import 'package:mocktail/mocktail.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_team_member_use_case.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/get_team_member_list_use_case.dart';

class MockGetMembersUseCase extends Mock implements GetMembersUseCase {}

class MockDeleteMembersUseCase extends Mock implements DeleteMembersUseCase {}
