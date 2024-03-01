part of 'team_member_list_bloc.dart';

abstract class TeamMemberListState extends Equatable {
  @override
  List<Object> get props => [];
}

class TeamMemberListInitialState extends TeamMemberListState {}

class TeamMemberListLoadingState extends TeamMemberListState {}

class GetTeamMemberListState extends TeamMemberListState {
  final List<TeamMemberEntity> teamMembers;
  GetTeamMemberListState(this.teamMembers);

  @override
  List<Object> get props => [teamMembers];
}

class TeamMemberListErrorState extends TeamMemberListState {
  final String message;
  TeamMemberListErrorState(this.message);

  @override
  List<Object> get props => [message];
}
