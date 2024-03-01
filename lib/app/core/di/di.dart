import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:team_members/app/features/team_member_list/data/api/api_client.dart';
import 'package:team_members/app/features/team_member_list/data/api/api_client_impl.dart';
import 'package:team_members/app/features/team_member_list/data/repositories/team_members_repository_impl.dart';
import 'package:team_members/app/features/team_member_list/domain/repositories/team_members_repository.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_team_member_use_case.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_team_member_use_case_impl.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/get_team_member_list_use_case.dart';
import 'package:team_members/app/features/team_member_list/domain/use_cases/get_team_member_list_use_case_impl.dart';
import 'package:team_members/app/features/team_member_list/presentation/bloc/team_member_list_bloc.dart';

final GetIt serviceLocator = GetIt.instance;

@injectableInit
void configureInjection() {
  serviceLocator.registerLazySingleton<ApiClient>(
    () => ApiClientImpl(),
  );
  serviceLocator.registerLazySingleton<TeamMembersRepository>(
    () => TeamMembersRepositoryImpl(
      api: serviceLocator.get<ApiClient>(),
    ),
  );
  serviceLocator.registerFactory<GetMembersUseCase>(
    () => GetMembersUseCaseImpl(
      repository: serviceLocator.get<TeamMembersRepository>(),
    ),
  );
  serviceLocator.registerFactory<DeleteMembersUseCase>(
    () => DeleteMembersUseCaseImpl(
      repository: serviceLocator.get<TeamMembersRepository>(),
    ),
  );

  serviceLocator.registerFactory<TeamMemberListBloc>(
    () => TeamMemberListBloc(
      serviceLocator.get<GetMembersUseCase>(),
      serviceLocator.get<DeleteMembersUseCase>(),
    ),
  );
}
