part of 'team_member_list_bloc.dart';

@freezed
abstract class TeamMemberListState with _$TeamMemberListState {
  const factory TeamMemberListState({
    @Default(Status.initial) Status status,
    String? errorMessage,
    @Default([]) List<TeamMemberEntity> teamMembers,
  }) = _TeamMemberListState;
}

enum Status {
  initial,
  loading,
  failure,
  success,
}
