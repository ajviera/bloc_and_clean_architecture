import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:team_members/app/features/team_member_list/data/api/api_client.dart';
import 'package:team_members/app/features/team_member_list/data/services/file_service.dart';
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_member_request.dart';

@LazySingleton(as: ApiClient)
class ApiClientImpl implements ApiClient {
  List<TeamMemberEntity> teamMembers = <TeamMemberEntity>[];

  @override
  Future<List<TeamMemberEntity>> getTeamMembers() async {
    final String response = await FileService().getJson();
    final jsonResult = json.decode(response);

    teamMembers = List<TeamMemberEntity>.from(
        jsonResult.map((data) => TeamMemberEntity.fromJson(data)).toList());
    return await Future.delayed(const Duration(seconds: 2)).then(
      (_) {
        return teamMembers;
      },
    );
  }

  @override
  Future<List<TeamMemberEntity>> deleteTeamMember({
    required DeleteMemberRequest memberRequest,
  }) async {
    return await Future.delayed(const Duration(seconds: 2)).then(
      (_) {
        teamMembers.removeWhere((item) => item.id == memberRequest.memberId);

        return teamMembers;
      },
    );
  }
}
