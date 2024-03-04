import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';

import 'package:team_members/app/features/team_member_list/domain/entities/team_member_entity.dart';
import 'package:team_members/app/features/team_member_list/presentation/bloc/team_member_list_bloc.dart';
import 'package:team_members/app/features/team_member_list/presentation/screens/team_member_list_screen.dart';
import 'package:team_members/app/features/team_member_list/presentation/screens/widgets/team_member_card.dart';
import 'package:team_members/generated/l10n.dart';

import '../../../../../mocks/fake_data.dart';
import '../../../../../mocks/mocks.dart';
import '../../../../../test_helpers/test_app.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  var fakeData = FakeData();
  late final List<TeamMemberEntity> teamMembersList;
  final GetIt serviceLocator = GetIt.instance;
  late S s;
  late MockTeamMemberListBloc mockTeamMemberListBloc;

  setUpAll(() async {
    await fakeData.init();
    teamMembersList = fakeData.teamMembersList;
    serviceLocator
      ..pushNewScope()
      ..registerSingleton<Logger>(MockLogger());

    registerFallbackValue(MockGetMembersUseCase);
    registerFallbackValue(MockGetMembersUseCase);
  });

  setUp(() {
    mockTeamMemberListBloc = MockTeamMemberListBloc();
  });

  tearDownAll(() => serviceLocator.popScope());

  TestApp testApp(Widget widget, TeamMemberListBloc bloc) {
    return TestApp(
      builder: (context) {
        s = S.of(context);
        return BlocProvider.value(
          value: bloc,
          child: widget,
        );
      },
    );
  }

  testWidgets('Display content', (tester) async {
    whenListen(
      mockTeamMemberListBloc,
      Stream.fromIterable(<TeamMemberListState>[]),
      initialState: const TeamMemberListState(
        status: Status.success,
        teamMembers: [],
      ),
    );

    await tester.pumpWidget(
      testApp(
        const TeamMemberListScreen(),
        mockTeamMemberListBloc,
      ),
    );
    await tester.pumpAndSettle();

    expectLater(find.text(s.emptyMessage), findsOneWidget);
  });

  testWidgets('Display loading indicator', (tester) async {
    whenListen(
      mockTeamMemberListBloc,
      Stream.fromIterable(<TeamMemberListState>[]),
      initialState: const TeamMemberListState(
        status: Status.loading,
      ),
    );

    await tester.pumpWidget(
      testApp(
        const TeamMemberListScreen(),
        mockTeamMemberListBloc,
      ),
    );
    await tester.pump(const Duration(seconds: 2));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('Display error message', (tester) async {
    whenListen(
      mockTeamMemberListBloc,
      Stream.fromIterable(<TeamMemberListState>[]),
      initialState: TeamMemberListState(
        status: Status.failure,
        errorMessage: s.generalErrorMessage,
      ),
    );

    await tester.pumpWidget(
      testApp(
        const TeamMemberListScreen(),
        mockTeamMemberListBloc,
      ),
    );
    await tester.pump(const Duration(seconds: 2));

    expectLater(find.text(s.generalErrorMessage), findsOneWidget);
  });

  testWidgets('Display content list', (tester) async {
    whenListen(
      mockTeamMemberListBloc,
      Stream.fromIterable(<TeamMemberListState>[]),
      initialState: TeamMemberListState(
        status: Status.success,
        teamMembers: teamMembersList,
      ),
    );

    await tester.pumpWidget(
      testApp(
        const TeamMemberListScreen(),
        mockTeamMemberListBloc,
      ),
    );
    await tester.pump(const Duration(seconds: 2));

    expectLater(find.byType(TeamMemberCard), findsAtLeast(1));
    expectLater(find.byType(ListView), findsOneWidget);
  });
}
