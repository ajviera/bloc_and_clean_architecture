import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team_members/app/common/mixins/error_handler_mixin.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_member_request.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_team_member_use_case.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/get_team_member_list_use_case.dart';
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';

part 'team_member_list_bloc.freezed.dart';
part 'team_member_list_event.dart';
part 'team_member_list_state.dart';

class TeamMemberListBloc extends Bloc<TeamMemberListEvent, TeamMemberListState>
    with ErrorHandlerMixin {
  final GetMembersUseCase _getMembersUseCase;
  final DeleteMembersUseCase _deleteMembersUseCase;

  TeamMemberListBloc(
    this._getMembersUseCase,
    this._deleteMembersUseCase,
  ) : super(const TeamMemberListState()) {
    on<_TeamMemberListEventStarted>(_onTeamMembersEventStarted);
    on<_TeamMemberListDeleteEventStarted>(_onTeamMembersDeleteEventStarted);
  }

  FutureOr<void> _onTeamMembersEventStarted(_TeamMemberListEventStarted event,
      Emitter<TeamMemberListState> emit) async {
    try {
      emit(state.copyWith(status: Status.loading));
      List<TeamMemberEntity> teamMembers = await _getMembersUseCase.call();
      emit(state.copyWith(status: Status.success, teamMembers: teamMembers));
    } catch (e) {
      // The original error is logged, but a user-friendly error is returned to
      // the UI. This could be changed depending on how you want to display
      // the error.
      logError(e);
      emit(
        state.copyWith(
          status: Status.failure,
          errorMessage: "Something Went Wrong",
        ),
      );
    }
  }

  FutureOr<void> _onTeamMembersDeleteEventStarted(
      _TeamMemberListDeleteEventStarted event,
      Emitter<TeamMemberListState> emit) async {
    try {
      emit(state.copyWith(status: Status.loading));

      List<TeamMemberEntity> teamMembers = await _deleteMembersUseCase.call(
        DeleteMemberRequest(event.teamMember.id),
      );

      emit(state.copyWith(status: Status.success, teamMembers: teamMembers));
    } catch (e) {
      // The original error is logged, but a user-friendly error is returned to
      // the UI. This could be changed depending on how you want to display
      // the error.
      logError(e);
      emit(
        state.copyWith(
          status: Status.failure,
          errorMessage: "Something Went Wrong",
        ),
      );
    }
  }
}
