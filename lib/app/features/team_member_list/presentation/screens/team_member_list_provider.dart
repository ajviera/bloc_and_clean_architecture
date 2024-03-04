import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_members/app/core/di/di.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_team_member_use_case.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/get_team_member_list_use_case.dart';
import 'package:team_members/app/features/team_member_list/presentation/bloc/team_member_list_bloc.dart';
import 'package:team_members/app/features/team_member_list/presentation/screens/team_member_list_screen.dart';

// The BLoC is initialized here
class TeamMemberListProvider extends StatelessWidget {
  const TeamMemberListProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: const TeamMemberListScreen(),
    );
  }

  TeamMemberListBloc get _bloc {
    return TeamMemberListBloc(
      serviceLocator<GetMembersUseCase>(),
      serviceLocator<DeleteMembersUseCase>(),
    )..add(const TeamMemberListEvent.started());
  }
}
