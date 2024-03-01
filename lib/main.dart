import 'package:flutter/material.dart';
import 'package:team_members/app/core/di/di.dart';
import 'package:team_members/app/features/main_app/team_members_app.dart';

void main() {
  configureInjection();
  runApp(const TeamMembersApp());
}
