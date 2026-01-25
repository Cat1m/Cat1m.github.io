// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/about/profile_repository.dart' as _i874;
import '../../features/app_core/bloc/app_core_cubit.dart' as _i283;
import '../../features/portfolio/bloc/portfolio_cubit.dart' as _i920;
import '../../features/portfolio/repositories/portfolio_repository.dart'
    as _i244;
import '../../features/projects/repositories/project_repository.dart' as _i545;
import '../services/exception_handler_service.dart' as _i550;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i550.ExceptionHandlerService>(
      () => _i550.ExceptionHandlerService(),
    );
    gh.lazySingleton<_i545.IProjectRepository>(() => _i545.ProjectRepository());
    gh.lazySingleton<_i244.IPortfolioRepository>(
      () => _i244.PortfolioRepository(),
    );
    gh.lazySingleton<_i874.IProfileRepository>(() => _i874.ProfileRepository());
    gh.factory<_i920.PortfolioCubit>(
      () => _i920.PortfolioCubit(
        gh<_i244.IPortfolioRepository>(),
        gh<_i874.IProfileRepository>(),
        gh<_i545.IProjectRepository>(),
        gh<_i550.ExceptionHandlerService>(),
      ),
    );
    gh.factory<_i283.AppCoreCubit>(
      () => _i283.AppCoreCubit(
        exceptionHandlerService: gh<_i550.ExceptionHandlerService>(),
      ),
    );
    return this;
  }
}
