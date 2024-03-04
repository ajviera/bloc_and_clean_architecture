import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:team_members/generated/l10n.dart';

class TestApp extends StatelessWidget {
  const TestApp({
    required this.builder,
    super.key,
  });

  final Widget Function(BuildContext) builder;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Flutter Tests',
      home: Builder(
        builder: (context) => Material(child: builder(context)),
      ),
    );
  }
}
