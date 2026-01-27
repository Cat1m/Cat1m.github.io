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
import '../../features/blogs/blog_repository.dart' as _i620;
import '../../features/certificates/certificate_repository.dart' as _i529;
import '../../features/certificates/education_repository.dart' as _i953;
import '../../features/experience/experience_repository.dart' as _i339;
import '../../features/portfolio/cubit/portfolio_cubit.dart' as _i117;
import '../../features/portfolio/repositories/portfolio_repository.dart'
    as _i244;
import '../../features/projects/repositories/project_repository.dart' as _i545;
import '../../features/skills/skill_repository.dart' as _i999;
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
    gh.lazySingleton<_i620.IBlogRepository>(() => _i620.BlogRepository());
    gh.lazySingleton<_i545.IProjectRepository>(() => _i545.ProjectRepository());
    gh.lazySingleton<_i953.IEducationRepository>(
      () => _i953.EducationRepository(),
    );
    gh.lazySingleton<_i244.IPortfolioRepository>(
      () => _i244.PortfolioRepository(),
    );
    gh.lazySingleton<_i874.IProfileRepository>(() => _i874.ProfileRepository());
    gh.lazySingleton<_i339.IExperienceRepository>(
      () => _i339.ExperienceRepository(),
    );
    gh.lazySingleton<_i529.ICertificateRepository>(
      () => _i529.CertificateRepository(),
    );
    gh.lazySingleton<_i999.ISkillRepository>(() => _i999.SkillRepository());
    gh.factory<_i117.PortfolioCubit>(
      () => _i117.PortfolioCubit(
        gh<_i244.IPortfolioRepository>(),
        gh<_i874.IProfileRepository>(),
        gh<_i545.IProjectRepository>(),
        gh<_i339.IExperienceRepository>(),
        gh<_i999.ISkillRepository>(),
        gh<_i953.IEducationRepository>(),
        gh<_i529.ICertificateRepository>(),
        gh<_i550.ExceptionHandlerService>(),
        gh<_i620.IBlogRepository>(),
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
