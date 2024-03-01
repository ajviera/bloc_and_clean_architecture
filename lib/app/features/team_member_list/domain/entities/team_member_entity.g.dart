// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_member_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamMemberEntityImpl _$$TeamMemberEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamMemberEntityImpl(
      id: json['id'] as String,
      avatar: json['avatar'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      title: json['title'] as String?,
      bio: json['bio'] as String?,
    );

Map<String, dynamic> _$$TeamMemberEntityImplToJson(
        _$TeamMemberEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar': instance.avatar,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'title': instance.title,
      'bio': instance.bio,
    };
