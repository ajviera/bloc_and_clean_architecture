// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_member_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteMemberRequest {
  String get memberId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteMemberRequestCopyWith<DeleteMemberRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteMemberRequestCopyWith<$Res> {
  factory $DeleteMemberRequestCopyWith(
          DeleteMemberRequest value, $Res Function(DeleteMemberRequest) then) =
      _$DeleteMemberRequestCopyWithImpl<$Res, DeleteMemberRequest>;
  @useResult
  $Res call({String memberId});
}

/// @nodoc
class _$DeleteMemberRequestCopyWithImpl<$Res, $Val extends DeleteMemberRequest>
    implements $DeleteMemberRequestCopyWith<$Res> {
  _$DeleteMemberRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
  }) {
    return _then(_value.copyWith(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteMemberRequestImplCopyWith<$Res>
    implements $DeleteMemberRequestCopyWith<$Res> {
  factory _$$DeleteMemberRequestImplCopyWith(_$DeleteMemberRequestImpl value,
          $Res Function(_$DeleteMemberRequestImpl) then) =
      __$$DeleteMemberRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String memberId});
}

/// @nodoc
class __$$DeleteMemberRequestImplCopyWithImpl<$Res>
    extends _$DeleteMemberRequestCopyWithImpl<$Res, _$DeleteMemberRequestImpl>
    implements _$$DeleteMemberRequestImplCopyWith<$Res> {
  __$$DeleteMemberRequestImplCopyWithImpl(_$DeleteMemberRequestImpl _value,
      $Res Function(_$DeleteMemberRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
  }) {
    return _then(_$DeleteMemberRequestImpl(
      null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteMemberRequestImpl implements _DeleteMemberRequest {
  const _$DeleteMemberRequestImpl(this.memberId);

  @override
  final String memberId;

  @override
  String toString() {
    return 'DeleteMemberRequest(memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMemberRequestImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMemberRequestImplCopyWith<_$DeleteMemberRequestImpl> get copyWith =>
      __$$DeleteMemberRequestImplCopyWithImpl<_$DeleteMemberRequestImpl>(
          this, _$identity);
}

abstract class _DeleteMemberRequest implements DeleteMemberRequest {
  const factory _DeleteMemberRequest(final String memberId) =
      _$DeleteMemberRequestImpl;

  @override
  String get memberId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteMemberRequestImplCopyWith<_$DeleteMemberRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
