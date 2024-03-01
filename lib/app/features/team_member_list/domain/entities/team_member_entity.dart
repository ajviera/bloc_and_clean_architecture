import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_member_entity.freezed.dart';
part 'team_member_entity.g.dart';

@freezed
class TeamMemberEntity with _$TeamMemberEntity {
  const factory TeamMemberEntity({
    required String id,
    String? avatar,
    String? firstName,
    String? lastName,
    String? title,
    String? bio,
  }) = _TeamMemberEntity;

  factory TeamMemberEntity.fromJson(Map<String, Object?> json) =>
      _$TeamMemberEntityFromJson(json);
}
