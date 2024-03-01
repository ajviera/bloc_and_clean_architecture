import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_member_request.freezed.dart';

@freezed
class DeleteMemberRequest with _$DeleteMemberRequest {
  const factory DeleteMemberRequest(
    final String memberId,
  ) = _DeleteMemberRequest;
}
