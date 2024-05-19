// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/sign_in/data/data_source/remote/authentication.dart'
    as _i10;
import '../features/sign_in/data/data_source/remote/firebase_authentication.dart'
    as _i11;
import '../features/sign_in/data/repository_impl/sign_in_repository_impl/sign_in_custom_authneitcation_repository_impl.dart'
    as _i17;
import '../features/sign_in/data/repository_impl/sign_in_repository_impl/sign_in_email_and_password_repository_impl.dart'
    as _i13;
import '../features/sign_in/data/repository_impl/sign_in_repository_impl/sign_in_with_google_button_repository_impl.dart'
    as _i15;
import '../features/sign_in/domain/repository/sign_in_repository/sign_in_custom_authneitcation_repository.dart'
    as _i16;
import '../features/sign_in/domain/repository/sign_in_repository/sign_in_email_and_password_repository.dart'
    as _i12;
import '../features/sign_in/domain/repository/sign_in_repository/sign_in_with_google_button_repository.dart'
    as _i14;
import '../features/sign_in/domain/use_cases/sign_in_usecase/sign_in_custom_authneitcation_usecase.dart'
    as _i19;
import '../features/sign_in/domain/use_cases/sign_in_usecase/sign_in_email_and_password_usecase.dart'
    as _i18;
import '../features/sign_in/domain/use_cases/sign_in_usecase/sign_in_with_google_button_usecase.dart'
    as _i20;
import '../features/sign_in/presentation/bloc/sign_in_bloc.dart' as _i21;
import '../generated/l10n.dart' as _i4;
import 'firebase/firebase_api.dart' as _i6;
import 'hive/firabase_local_storage/model/firebase_local_model.dart' as _i8;
import 'locator.dart' as _i22;
import 'navigation/app_router.dart' as _i7;

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
    gh.singleton<_i6.FirebaseApi>(() => _i6.FirebaseApi());
    gh.lazySingleton<_i7.AppRouter>(() => _i7.AppRouter());
    gh.factory<_i8.FirebaseLocalModel>(
        () => _i8.FirebaseLocalModel(fcmToken: gh<String>()));
    gh.factory<_i9.AutoRoute>(() => registerModule.autoRoute);
    gh.singleton<_i10.Authentication>(() =>
        _i11.FirebaseAuthentication(firebaseAuth: gh<_i5.FirebaseAuth>()));
    gh.factory<_i12.SignInWithEmailAndPasswordRepository>(() =>
        _i13.SignInWithEmailAndPasswordRepositoryImpl(
            authentication: gh<_i10.Authentication>()));
    gh.factory<_i14.SignInWithGoogleButtonRepository>(() =>
        _i15.SignInWithGoogleButtonRepositoryImpl(
            authentication: gh<_i10.Authentication>()));
    gh.factory<_i16.SignInCustomAuthenticationRepository>(() =>
        _i17.SignInCustomAuthenticationRepositoryImpl(
            authentication: gh<_i10.Authentication>()));
    gh.factory<_i18.SignInWithEmailAndPasswordUseCase>(() =>
        _i18.SignInWithEmailAndPasswordUseCase(
            signInWithEmailAndPasswordRepository:
                gh<_i12.SignInWithEmailAndPasswordRepository>()));
    gh.factory<_i19.SignInCustomAuthenticationUseCase>(() =>
        _i19.SignInCustomAuthenticationUseCase(
            signInCustomAuthenticationRepository:
                gh<_i16.SignInCustomAuthenticationRepository>()));
    gh.factory<_i20.SignInWithGoogleButtonUseCase>(() =>
        _i20.SignInWithGoogleButtonUseCase(
            signInWithGoogleButtonRepository:
                gh<_i14.SignInWithGoogleButtonRepository>()));
    gh.factory<_i21.SignInBloc>(() => _i21.SignInBloc(
          signInWithGoogleButtonUseCase:
              gh<_i20.SignInWithGoogleButtonUseCase>(),
          signInCustomAuthenticationUseCase:
              gh<_i19.SignInCustomAuthenticationUseCase>(),
          signInWithEmailAndPasswordUseCase:
              gh<_i18.SignInWithEmailAndPasswordUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i22.RegisterModule {
  _$RegisterModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i4.AppLocalizations get appLocalizations => _i4.AppLocalizations();

  @override
  _i9.AutoRoute get autoRoute => _i9.AutoRoute(
        page: _getIt<_i9.PageInfo<dynamic>>(),
        path: _getIt<String>(),
        usesPathAsKey: _getIt<bool>(),
        guards: _getIt<List<_i9.AutoRouteGuard>>(),
        fullMatch: _getIt<bool>(),
        type: _getIt<_i9.RouteType>(),
        meta: _getIt<Map<String, dynamic>>(),
        maintainState: _getIt<bool>(),
        fullscreenDialog: _getIt<bool>(),
        children: _getIt<List<_i9.AutoRoute>>(),
        title: _getIt<_i9.TitleBuilder>(),
        restorationId: _getIt<_i9.RestorationIdBuilder>(),
        keepHistory: _getIt<bool>(),
        initial: _getIt<bool>(),
        allowSnapshotting: _getIt<bool>(),
      );
}
