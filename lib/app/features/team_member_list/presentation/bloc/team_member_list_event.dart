part of 'team_member_list_bloc.dart';

@freezed
class TeamMemberListEvent with _$TeamMemberListEvent {
  const factory TeamMemberListEvent.started() = _TeamMemberListEventStarted;
  const factory TeamMemberListEvent.deleteMember(
          {required TeamMemberEntity teamMember}) =
      _TeamMemberListDeleteEventStarted;
}
