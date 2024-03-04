import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:team_members/app/core/helpers/errors.dart';
import 'package:team_members/app/core/services/file_service.dart';
import 'package:team_members/app/features/team_member_list/data/api/api_client.dart';
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_member_request.dart';

@LazySingleton(as: ApiClient)
class ApiClientImpl implements ApiClient {
  List<TeamMemberEntity> _teamMembers = <TeamMemberEntity>[];

  final FileService _service;

  ApiClientImpl({
    required FileService service,
  }) : _service = service;

  /// Return a list of team members.
  /// If the response data is corrupted it throws a
  /// [TeamMembersBadResponseException].
  @override
  Future<List<TeamMemberEntity>> getTeamMembers() async {
    try {
      final String response = await _service.getJson();
      final jsonResult = json.decode(response);

      _teamMembers = List<TeamMemberEntity>.from(
        jsonResult.map((data) => TeamMemberEntity.fromJson(data)).toList(),
      );

      return await Future.delayed(const Duration(seconds: 2)).then(
        (_) {
          return _teamMembers;
        },
      );
    } catch (e) {
      throw TeamMembersBadResponseException(
        message: 'errorMessages=$e'
            '\nGet Team Members failed',
      );
    }
  }

  /// Return a list of team members without the deleted member.
  /// If the response data is corrupted it throws a
  /// [TeamMembersBadResponseException].
  @override
  Future<List<TeamMemberEntity>> deleteTeamMember({
    required DeleteMemberRequest memberRequest,
  }) async {
    try {
      return await Future.delayed(const Duration(seconds: 2)).then(
        (_) {
          _teamMembers.removeWhere((item) => item.id == memberRequest.memberId);

          return _teamMembers;
        },
      );
    } catch (e) {
      throw TeamMembersBadResponseException(
        message: 'errorMessages=$e'
            '\nDelete Team Member failed',
      );
    }
  }
}
