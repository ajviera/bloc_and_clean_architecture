import 'package:flutter/material.dart';
import 'package:team_members/app/common/design_system/custom_colors.dart';
import 'package:team_members/app/common/design_system/custom_widgets/avatar.dart';
import 'package:team_members/app/common/design_system/custom_widgets/trash_button.dart';
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';

class TeamMemberCard extends StatelessWidget {
  final TeamMemberEntity member;
  final VoidCallback deleteAction;

  const TeamMemberCard({
    super.key,
    required this.member,
    required this.deleteAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: CustomColors.borderColor),
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          _teamMember(context),
          const Spacer(),
          _trashButton(context),
        ],
      ),
    );
  }

  Widget _teamMember(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Avatar(avatar: member.avatar ?? ''),
            ),
            _teamMemberInfo(context),
          ],
        ),
        const SizedBox(height: 5.0),
        _bio(context),
      ],
    );
  }

  Widget _teamMemberInfo(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          '${member.firstName} ${member.lastName}',
          style: const TextStyle(
            color: CustomColors.textColor,
            fontSize: 12.0,
          ),
        ),
        Text(
          '${member.title}',
          style: const TextStyle(
            color: CustomColors.textColor,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }

  Widget _bio(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5.0, bottom: 5.0),
      width: MediaQuery.of(context).size.width * 0.75,
      child: RichText(
        overflow: TextOverflow.ellipsis,
        strutStyle: const StrutStyle(fontSize: 12.0),
        text: TextSpan(
          style: const TextStyle(color: CustomColors.textColor),
          text: '${member.bio?.substring(0, 100)}',
        ),
      ),
    );
  }

  Widget _trashButton(BuildContext context) {
    return TrashButton(deleteAction: deleteAction);
  }
}
