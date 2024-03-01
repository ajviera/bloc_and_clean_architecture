// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_member_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamMemberEntity _$TeamMemberEntityFromJson(Map<String, dynamic> json) {
  return _TeamMemberEntity.fromJson(json);
}

/// @nodoc
mixin _$TeamMemberEntity {
  String get id => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamMemberEntityCopyWith<TeamMemberEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamMemberEntityCopyWith<$Res> {
  factory $TeamMemberEntityCopyWith(
          TeamMemberEntity value, $Res Function(TeamMemberEntity) then) =
      _$TeamMemberEntityCopyWithImpl<$Res, TeamMemberEntity>;
  @useResult
  $Res call(
      {String id,
      String? avatar,
      String? firstName,
      String? lastName,
      String? title,
      String? bio});
}

/// @nodoc
class _$TeamMemberEntityCopyWithImpl<$Res, $Val extends TeamMemberEntity>
    implements $TeamMemberEntityCopyWith<$Res> {
  _$TeamMemberEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatar = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? title = freezed,
    Object? bio = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamMemberEntityImplCopyWith<$Res>
    implements $TeamMemberEntityCopyWith<$Res> {
  factory _$$TeamMemberEntityImplCopyWith(_$TeamMemberEntityImpl value,
          $Res Function(_$TeamMemberEntityImpl) then) =
      __$$TeamMemberEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? avatar,
      String? firstName,
      String? lastName,
      String? title,
      String? bio});
}

/// @nodoc
class __$$TeamMemberEntityImplCopyWithImpl<$Res>
    extends _$TeamMemberEntityCopyWithImpl<$Res, _$TeamMemberEntityImpl>
    implements _$$TeamMemberEntityImplCopyWith<$Res> {
  __$$TeamMemberEntityImplCopyWithImpl(_$TeamMemberEntityImpl _value,
      $Res Function(_$TeamMemberEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatar = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? title = freezed,
    Object? bio = freezed,
  }) {
    return _then(_$TeamMemberEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamMemberEntityImpl implements _TeamMemberEntity {
  const _$TeamMemberEntityImpl(
      {required this.id,
      this.avatar,
      this.firstName,
      this.lastName,
      this.title,
      this.bio});

  factory _$TeamMemberEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamMemberEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String? avatar;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? title;
  @override
  final String? bio;

  @override
  String toString() {
    return 'TeamMemberEntity(id: $id, avatar: $avatar, firstName: $firstName, lastName: $lastName, title: $title, bio: $bio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamMemberEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, avatar, firstName, lastName, title, bio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamMemberEntityImplCopyWith<_$TeamMemberEntityImpl> get copyWith =>
      __$$TeamMemberEntityImplCopyWithImpl<_$TeamMemberEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamMemberEntityImplToJson(
      this,
    );
  }
}

abstract class _TeamMemberEntity implements TeamMemberEntity {
  const factory _TeamMemberEntity(
      {required final String id,
      final String? avatar,
      final String? firstName,
      final String? lastName,
      final String? title,
      final String? bio}) = _$TeamMemberEntityImpl;

  factory _TeamMemberEntity.fromJson(Map<String, dynamic> json) =
      _$TeamMemberEntityImpl.fromJson;

  @override
  String get id;
  @override
  String? get avatar;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get title;
  @override
  String? get bio;
  @override
  @JsonKey(ignore: true)
  _$$TeamMemberEntityImplCopyWith<_$TeamMemberEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
