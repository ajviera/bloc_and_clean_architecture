import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:team_members/app/common/design_system/custom_widgets/trash_button.dart';
import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';
import 'package:team_members/app/features/team_member_list/presentation/screens/widgets/team_member_card.dart';

import '../../../../../../mocks/fake_data.dart';
import '../../../../../../test_helpers/test_app.dart';

void main() {
  var fakeData = FakeData();
  late final List<TeamMemberEntity> teamMembersList;
  late final TeamMemberEntity member;

  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await fakeData.init();
    teamMembersList = fakeData.teamMembersList;
    member = teamMembersList.first;
  });

  TestApp testApp(Widget widget) {
    return TestApp(
      builder: (context) => Scaffold(
        body: widget,
      ),
    );
  }

  group('TeamMemberCard', () {
    testWidgets('Display content', (tester) async {
      await tester.pumpWidget(
        testApp(
          TeamMemberCard(
            member: member.copyWith(avatar: ''),
            deleteAction: () {},
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(TrashButton), findsOneWidget);
    });
  });
}
