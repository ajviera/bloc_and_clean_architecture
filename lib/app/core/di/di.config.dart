// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:team_members/app/features/team_member_list/data/api/api_client.dart'
    as _i3;
import 'package:team_members/app/features/team_member_list/data/api/api_client_impl.dart'
    as _i4;
import 'package:team_members/app/features/team_member_list/data/repositories/team_members_repository_impl.dart'
    as _i6;
import 'package:team_members/app/features/team_member_list/domain/repositories/team_members_repository.dart'
    as _i5;
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_team_member_use_case.dart'
    as _i7;
import 'package:team_members/app/features/team_member_list/domain/use_cases/delete_team_member_use_case_impl.dart'
    as _i8;
import 'package:team_members/app/features/team_member_list/domain/use_cases/get_team_member_list_use_case.dart'
    as _i9;
import 'package:team_members/app/features/team_member_list/domain/use_cases/get_team_member_list_use_case_impl.dart'
    as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ApiClient>(() => _i4.ApiClientImpl());
    gh.lazySingleton<_i5.TeamMembersRepository>(
        () => _i6.TeamMembersRepositoryImpl(api: gh<_i3.ApiClient>()));
    gh.factory<_i7.DeleteMembersUseCase>(() => _i8.DeleteMembersUseCaseImpl(
        repository: gh<_i5.TeamMembersRepository>()));
    gh.factory<_i9.GetMembersUseCase>(() => _i10.GetMembersUseCaseImpl(
        repository: gh<_i5.TeamMembersRepository>()));
    return this;
  }
}
