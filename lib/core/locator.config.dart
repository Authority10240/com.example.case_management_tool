// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/dashboard/presentation/bloc/dashboard_bloc.dart' as _i6;
import '../features/sign_in/data/data_source/remote/authentication.dart'
    as _i11;
import '../features/sign_in/data/data_source/remote/firebase_authentication.dart'
    as _i12;
import '../features/sign_in/data/repository_impl/sign_in_repository_impl/sign_in_custom_authneitcation_repository_impl.dart'
    as _i18;
import '../features/sign_in/data/repository_impl/sign_in_repository_impl/sign_in_email_and_password_repository_impl.dart'
    as _i14;
import '../features/sign_in/data/repository_impl/sign_in_repository_impl/sign_in_with_google_button_repository_impl.dart'
    as _i16;
import '../features/sign_in/domain/repository/sign_in_repository/sign_in_custom_authneitcation_repository.dart'
    as _i17;
import '../features/sign_in/domain/repository/sign_in_repository/sign_in_email_and_password_repository.dart'
    as _i13;
import '../features/sign_in/domain/repository/sign_in_repository/sign_in_with_google_button_repository.dart'
    as _i15;
import '../features/sign_in/domain/use_cases/sign_in_usecase/sign_in_custom_authneitcation_usecase.dart'
    as _i20;
import '../features/sign_in/domain/use_cases/sign_in_usecase/sign_in_email_and_password_usecase.dart'
    as _i19;
import '../features/sign_in/domain/use_cases/sign_in_usecase/sign_in_with_google_button_usecase.dart'
    as _i21;
import '../features/sign_in/presentation/bloc/sign_in_bloc.dart' as _i22;
import '../generated/l10n.dart' as _i4;
import 'firebase/firebase_api.dart' as _i7;
import 'hive/firabase_local_storage/model/firebase_local_model.dart' as _i9;
import 'locator.dart' as _i23;
import 'navigation/app_router.dart' as _i8;

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
    final registerModule = _$RegisterModule(this);
    gh.factory<_i3.Dio>(() => registerModule.dio);
    gh.factory<_i4.AppLocalizations>(() => registerModule.appLocalizations);
    gh.factory<_i5.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.factory<_i6.DashboardBloc>(() => _i6.DashboardBloc());
    gh.singleton<_i7.FirebaseApi>(() => _i7.FirebaseApi());
    gh.lazySingleton<_i8.AppRouter>(() => _i8.AppRouter());
    gh.factory<_i9.FirebaseLocalModel>(
        () => _i9.FirebaseLocalModel(fcmToken: gh<String>()));
    gh.factory<_i10.AutoRoute>(() => registerModule.autoRoute);
    gh.singleton<_i11.Authentication>(() =>
        _i12.FirebaseAuthentication(firebaseAuth: gh<_i5.FirebaseAuth>()));
    gh.factory<_i13.SignInWithEmailAndPasswordRepository>(() =>
        _i14.SignInWithEmailAndPasswordRepositoryImpl(
            authentication: gh<_i11.Authentication>()));
    gh.factory<_i15.SignInWithGoogleButtonRepository>(() =>
        _i16.SignInWithGoogleButtonRepositoryImpl(
            authentication: gh<_i11.Authentication>()));
    gh.factory<_i17.SignInCustomAuthenticationRepository>(() =>
        _i18.SignInCustomAuthenticationRepositoryImpl(
            authentication: gh<_i11.Authentication>()));
    gh.factory<_i19.SignInWithEmailAndPasswordUseCase>(() =>
        _i19.SignInWithEmailAndPasswordUseCase(
            signInWithEmailAndPasswordRepository:
                gh<_i13.SignInWithEmailAndPasswordRepository>()));
    gh.factory<_i20.SignInCustomAuthenticationUseCase>(() =>
        _i20.SignInCustomAuthenticationUseCase(
            signInCustomAuthenticationRepository:
                gh<_i17.SignInCustomAuthenticationRepository>()));
    gh.factory<_i21.SignInWithGoogleButtonUseCase>(() =>
        _i21.SignInWithGoogleButtonUseCase(
            signInWithGoogleButtonRepository:
                gh<_i15.SignInWithGoogleButtonRepository>()));
    gh.factory<_i22.SignInBloc>(() => _i22.SignInBloc(
          signInWithGoogleButtonUseCase:
              gh<_i21.SignInWithGoogleButtonUseCase>(),
          signInCustomAuthenticationUseCase:
              gh<_i20.SignInCustomAuthenticationUseCase>(),
          signInWithEmailAndPasswordUseCase:
              gh<_i19.SignInWithEmailAndPasswordUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i23.RegisterModule {
  _$RegisterModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i4.AppLocalizations get appLocalizations => _i4.AppLocalizations();

  @override
  _i10.AutoRoute get autoRoute => _i10.AutoRoute(
        page: _getIt<_i10.PageInfo<dynamic>>(),
        path: _getIt<String>(),
        usesPathAsKey: _getIt<bool>(),
        guards: _getIt<List<_i10.AutoRouteGuard>>(),
        fullMatch: _getIt<bool>(),
        type: _getIt<_i10.RouteType>(),
        meta: _getIt<Map<String, dynamic>>(),
        maintainState: _getIt<bool>(),
        fullscreenDialog: _getIt<bool>(),
        children: _getIt<List<_i10.AutoRoute>>(),
        title: _getIt<_i10.TitleBuilder>(),
        restorationId: _getIt<_i10.RestorationIdBuilder>(),
        keepHistory: _getIt<bool>(),
        initial: _getIt<bool>(),
        allowSnapshotting: _getIt<bool>(),
      );
}
