import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_members/app/core/di/di.dart';
import 'package:team_members/app/features/team_member_list/presentation/bloc/team_member_list_bloc.dart';
import 'package:team_members/app/features/team_member_list/presentation/screens/team_member_list_screen.dart';

class TeamMemberListProvider extends StatelessWidget {
  const TeamMemberListProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: serviceLocator<TeamMemberListBloc>()
        ..add(const TeamMemberListEvent.started()),
      child: const TeamMemberListScreen(),
    );
  }
}
