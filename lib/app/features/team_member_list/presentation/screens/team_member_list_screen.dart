import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_members/app/common/extensions/build_context_extension.dart';
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';
import 'package:team_members/app/features/team_member_list/presentation/bloc/team_member_list_bloc.dart';
import 'package:team_members/app/features/team_member_list/presentation/screens/widgets/team_member_card.dart';
import 'package:team_members/generated/l10n.dart';

class TeamMemberListScreen extends StatelessWidget {
  static const String route = '/';

  const TeamMemberListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamMemberListBloc, TeamMemberListState>(
      bloc: context.teamMemberListBloc,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text(S.of(context).title)),
          body: _body(context, state),
        );
      },
    );
  }

  Widget _body(BuildContext context, TeamMemberListState state) {
    if (state.status == Status.loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (state.status == Status.failure) {
      return Center(
        child: Text(
          state.errorMessage ?? S.of(context).generalErrorMessage,
          textAlign: TextAlign.center,
        ),
      );
    }
    if (state.status == Status.success) {
      return state.teamMembers.isEmpty
          ? _emptyBodyWidget(context)
          : _bodyWidget(context, state.teamMembers);
    }
    return const SizedBox();
  }

  Widget _emptyBodyWidget(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).emptyMessage,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _bodyWidget(BuildContext context, List<TeamMemberEntity> teamMembers) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: RefreshIndicator(
          onRefresh: () async => _onRefreshPressed(context),
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemCount: teamMembers.length,
            itemBuilder: (context, index) {
              final member = teamMembers[index];

              return TeamMemberCard(
                member: member,
                deleteAction: () {
                  context.teamMemberListBloc.add(
                    TeamMemberListEvent.deleteMember(teamMember: member),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  void _onRefreshPressed(BuildContext context) {
    context.teamMemberListBloc.add(const TeamMemberListEvent.started());
  }
}
