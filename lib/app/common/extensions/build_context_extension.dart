import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_members/app/features/team_member_list/presentation/bloc/team_member_list_bloc.dart';

// Added to make Bloc.read simpler to use.
extension BuildContextExtension on BuildContext {
  TeamMemberListBloc get teamMemberListBloc => read<TeamMemberListBloc>();
}
