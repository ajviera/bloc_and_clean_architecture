import 'dart:convert';

import 'package:team_members/app/core/services/file_service.dart';
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';

class FakeData {
  late final List<TeamMemberEntity> teamMembersList;

  Future<void> init() async {
    final String response = await FileService().getJson();

    final jsonResult = json.decode(response);

    teamMembersList = List<TeamMemberEntity>.from(
      jsonResult
          .map((data) => TeamMemberEntity.fromJson(data).copyWith(avatar: ''))
          .toList(),
    );
  }
}
