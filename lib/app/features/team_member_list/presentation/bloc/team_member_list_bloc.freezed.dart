// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_member_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeamMemberListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TeamMemberEntity teamMember) deleteMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TeamMemberEntity teamMember)? deleteMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TeamMemberEntity teamMember)? deleteMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TeamMemberListEventStarted value) started,
    required TResult Function(_TeamMemberListDeleteEventStarted value)
        deleteMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TeamMemberListEventStarted value)? started,
    TResult? Function(_TeamMemberListDeleteEventStarted value)? deleteMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TeamMemberListEventStarted value)? started,
    TResult Function(_TeamMemberListDeleteEventStarted value)? deleteMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamMemberListEventCopyWith<$Res> {
  factory $TeamMemberListEventCopyWith(
          TeamMemberListEvent value, $Res Function(TeamMemberListEvent) then) =
      _$TeamMemberListEventCopyWithImpl<$Res, TeamMemberListEvent>;
}

/// @nodoc
class _$TeamMemberListEventCopyWithImpl<$Res, $Val extends TeamMemberListEvent>
    implements $TeamMemberListEventCopyWith<$Res> {
  _$TeamMemberListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TeamMemberListEventStartedImplCopyWith<$Res> {
  factory _$$TeamMemberListEventStartedImplCopyWith(
          _$TeamMemberListEventStartedImpl value,
          $Res Function(_$TeamMemberListEventStartedImpl) then) =
      __$$TeamMemberListEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TeamMemberListEventStartedImplCopyWithImpl<$Res>
    extends _$TeamMemberListEventCopyWithImpl<$Res,
        _$TeamMemberListEventStartedImpl>
    implements _$$TeamMemberListEventStartedImplCopyWith<$Res> {
  __$$TeamMemberListEventStartedImplCopyWithImpl(
      _$TeamMemberListEventStartedImpl _value,
      $Res Function(_$TeamMemberListEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TeamMemberListEventStartedImpl implements _TeamMemberListEventStarted {
  const _$TeamMemberListEventStartedImpl();

  @override
  String toString() {
    return 'TeamMemberListEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamMemberListEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TeamMemberEntity teamMember) deleteMember,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TeamMemberEntity teamMember)? deleteMember,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TeamMemberEntity teamMember)? deleteMember,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TeamMemberListEventStarted value) started,
    required TResult Function(_TeamMemberListDeleteEventStarted value)
        deleteMember,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TeamMemberListEventStarted value)? started,
    TResult? Function(_TeamMemberListDeleteEventStarted value)? deleteMember,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TeamMemberListEventStarted value)? started,
    TResult Function(_TeamMemberListDeleteEventStarted value)? deleteMember,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _TeamMemberListEventStarted implements TeamMemberListEvent {
  const factory _TeamMemberListEventStarted() =
      _$TeamMemberListEventStartedImpl;
}

/// @nodoc
abstract class _$$TeamMemberListDeleteEventStartedImplCopyWith<$Res> {
  factory _$$TeamMemberListDeleteEventStartedImplCopyWith(
          _$TeamMemberListDeleteEventStartedImpl value,
          $Res Function(_$TeamMemberListDeleteEventStartedImpl) then) =
      __$$TeamMemberListDeleteEventStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TeamMemberEntity teamMember});

  $TeamMemberEntityCopyWith<$Res> get teamMember;
}

/// @nodoc
class __$$TeamMemberListDeleteEventStartedImplCopyWithImpl<$Res>
    extends _$TeamMemberListEventCopyWithImpl<$Res,
        _$TeamMemberListDeleteEventStartedImpl>
    implements _$$TeamMemberListDeleteEventStartedImplCopyWith<$Res> {
  __$$TeamMemberListDeleteEventStartedImplCopyWithImpl(
      _$TeamMemberListDeleteEventStartedImpl _value,
      $Res Function(_$TeamMemberListDeleteEventStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamMember = null,
  }) {
    return _then(_$TeamMemberListDeleteEventStartedImpl(
      teamMember: null == teamMember
          ? _value.teamMember
          : teamMember // ignore: cast_nullable_to_non_nullable
              as TeamMemberEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamMemberEntityCopyWith<$Res> get teamMember {
    return $TeamMemberEntityCopyWith<$Res>(_value.teamMember, (value) {
      return _then(_value.copyWith(teamMember: value));
    });
  }
}

/// @nodoc

class _$TeamMemberListDeleteEventStartedImpl
    implements _TeamMemberListDeleteEventStarted {
  const _$TeamMemberListDeleteEventStartedImpl({required this.teamMember});

  @override
  final TeamMemberEntity teamMember;

  @override
  String toString() {
    return 'TeamMemberListEvent.deleteMember(teamMember: $teamMember)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamMemberListDeleteEventStartedImpl &&
            (identical(other.teamMember, teamMember) ||
                other.teamMember == teamMember));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teamMember);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamMemberListDeleteEventStartedImplCopyWith<
          _$TeamMemberListDeleteEventStartedImpl>
      get copyWith => __$$TeamMemberListDeleteEventStartedImplCopyWithImpl<
          _$TeamMemberListDeleteEventStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TeamMemberEntity teamMember) deleteMember,
  }) {
    return deleteMember(teamMember);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TeamMemberEntity teamMember)? deleteMember,
  }) {
    return deleteMember?.call(teamMember);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TeamMemberEntity teamMember)? deleteMember,
    required TResult orElse(),
  }) {
    if (deleteMember != null) {
      return deleteMember(teamMember);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TeamMemberListEventStarted value) started,
    required TResult Function(_TeamMemberListDeleteEventStarted value)
        deleteMember,
  }) {
    return deleteMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TeamMemberListEventStarted value)? started,
    TResult? Function(_TeamMemberListDeleteEventStarted value)? deleteMember,
  }) {
    return deleteMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TeamMemberListEventStarted value)? started,
    TResult Function(_TeamMemberListDeleteEventStarted value)? deleteMember,
    required TResult orElse(),
  }) {
    if (deleteMember != null) {
      return deleteMember(this);
    }
    return orElse();
  }
}

abstract class _TeamMemberListDeleteEventStarted
    implements TeamMemberListEvent {
  const factory _TeamMemberListDeleteEventStarted(
          {required final TeamMemberEntity teamMember}) =
      _$TeamMemberListDeleteEventStartedImpl;

  TeamMemberEntity get teamMember;
  @JsonKey(ignore: true)
  _$$TeamMemberListDeleteEventStartedImplCopyWith<
          _$TeamMemberListDeleteEventStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeamMemberListState {
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<TeamMemberEntity> get teamMembers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamMemberListStateCopyWith<TeamMemberListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamMemberListStateCopyWith<$Res> {
  factory $TeamMemberListStateCopyWith(
          TeamMemberListState value, $Res Function(TeamMemberListState) then) =
      _$TeamMemberListStateCopyWithImpl<$Res, TeamMemberListState>;
  @useResult
  $Res call(
      {Status status,
      String? errorMessage,
      List<TeamMemberEntity> teamMembers});
}

/// @nodoc
class _$TeamMemberListStateCopyWithImpl<$Res, $Val extends TeamMemberListState>
    implements $TeamMemberListStateCopyWith<$Res> {
  _$TeamMemberListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
    Object? teamMembers = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      teamMembers: null == teamMembers
          ? _value.teamMembers
          : teamMembers // ignore: cast_nullable_to_non_nullable
              as List<TeamMemberEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamMemberListStateImplCopyWith<$Res>
    implements $TeamMemberListStateCopyWith<$Res> {
  factory _$$TeamMemberListStateImplCopyWith(_$TeamMemberListStateImpl value,
          $Res Function(_$TeamMemberListStateImpl) then) =
      __$$TeamMemberListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      String? errorMessage,
      List<TeamMemberEntity> teamMembers});
}

/// @nodoc
class __$$TeamMemberListStateImplCopyWithImpl<$Res>
    extends _$TeamMemberListStateCopyWithImpl<$Res, _$TeamMemberListStateImpl>
    implements _$$TeamMemberListStateImplCopyWith<$Res> {
  __$$TeamMemberListStateImplCopyWithImpl(_$TeamMemberListStateImpl _value,
      $Res Function(_$TeamMemberListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
    Object? teamMembers = null,
  }) {
    return _then(_$TeamMemberListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      teamMembers: null == teamMembers
          ? _value._teamMembers
          : teamMembers // ignore: cast_nullable_to_non_nullable
              as List<TeamMemberEntity>,
    ));
  }
}

/// @nodoc

class _$TeamMemberListStateImpl implements _TeamMemberListState {
  const _$TeamMemberListStateImpl(
      {this.status = Status.initial,
      this.errorMessage,
      final List<TeamMemberEntity> teamMembers = const []})
      : _teamMembers = teamMembers;

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;
  final List<TeamMemberEntity> _teamMembers;
  @override
  @JsonKey()
  List<TeamMemberEntity> get teamMembers {
    if (_teamMembers is EqualUnmodifiableListView) return _teamMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teamMembers);
  }

  @override
  String toString() {
    return 'TeamMemberListState(status: $status, errorMessage: $errorMessage, teamMembers: $teamMembers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamMemberListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._teamMembers, _teamMembers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage,
      const DeepCollectionEquality().hash(_teamMembers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamMemberListStateImplCopyWith<_$TeamMemberListStateImpl> get copyWith =>
      __$$TeamMemberListStateImplCopyWithImpl<_$TeamMemberListStateImpl>(
          this, _$identity);
}

abstract class _TeamMemberListState implements TeamMemberListState {
  const factory _TeamMemberListState(
      {final Status status,
      final String? errorMessage,
      final List<TeamMemberEntity> teamMembers}) = _$TeamMemberListStateImpl;

  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  List<TeamMemberEntity> get teamMembers;
  @override
  @JsonKey(ignore: true)
  _$$TeamMemberListStateImplCopyWith<_$TeamMemberListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
