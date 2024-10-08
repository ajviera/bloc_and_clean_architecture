// Mocks generated by Mockito 5.4.4 from annotations
// in team_members/test/mocks/mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i4;
import 'package:team_members/app/core/services/file_service.dart' as _i2;
import 'package:team_members/app/features/team_member_list/data/api/api_client_impl.dart'
    as _i5;
import 'package:team_members/app/features/team_member_list/data/repositories/team_members_repository_impl.dart'
    as _i8;
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart'
    as _i6;
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_member_request.dart'
    as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [FileService].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileService extends _i1.Mock implements _i2.FileService {
  MockFileService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<String> getJson() => (super.noSuchMethod(
        Invocation.method(
          #getJson,
          [],
        ),
        returnValue: _i3.Future<String>.value(_i4.dummyValue<String>(
          this,
          Invocation.method(
            #getJson,
            [],
          ),
        )),
      ) as _i3.Future<String>);
}

/// A class which mocks [ApiClientImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiClientImpl extends _i1.Mock implements _i5.ApiClientImpl {
  MockApiClientImpl() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i6.TeamMemberEntity>> getTeamMembers() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTeamMembers,
          [],
        ),
        returnValue: _i3.Future<List<_i6.TeamMemberEntity>>.value(
            <_i6.TeamMemberEntity>[]),
      ) as _i3.Future<List<_i6.TeamMemberEntity>>);

  @override
  _i3.Future<List<_i6.TeamMemberEntity>> deleteTeamMember(
          {required _i7.DeleteMemberRequest? memberRequest}) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteTeamMember,
          [],
          {#memberRequest: memberRequest},
        ),
        returnValue: _i3.Future<List<_i6.TeamMemberEntity>>.value(
            <_i6.TeamMemberEntity>[]),
      ) as _i3.Future<List<_i6.TeamMemberEntity>>);
}

/// A class which mocks [TeamMembersRepositoryImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockTeamMembersRepositoryImpl extends _i1.Mock
    implements _i8.TeamMembersRepositoryImpl {
  MockTeamMembersRepositoryImpl() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i6.TeamMemberEntity>> getTeamMembers() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTeamMembers,
          [],
        ),
        returnValue: _i3.Future<List<_i6.TeamMemberEntity>>.value(
            <_i6.TeamMemberEntity>[]),
      ) as _i3.Future<List<_i6.TeamMemberEntity>>);

  @override
  _i3.Future<List<_i6.TeamMemberEntity>> deleteTeamMember(
          _i7.DeleteMemberRequest? deleteMemberRequest) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteTeamMember,
          [deleteMemberRequest],
        ),
        returnValue: _i3.Future<List<_i6.TeamMemberEntity>>.value(
            <_i6.TeamMemberEntity>[]),
      ) as _i3.Future<List<_i6.TeamMemberEntity>>);
}
