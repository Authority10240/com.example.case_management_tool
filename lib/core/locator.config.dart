// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../generated/l10n.dart' as _i4;
import 'firebase/firebase_api.dart' as _i5;
import 'hive/firabase_local_storage/model/firebase_local_model.dart' as _i7;
import 'locator.dart' as _i9;
import 'navigation/app_router.dart' as _i6;

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
    gh.singleton<_i5.FirebaseApi>(() => _i5.FirebaseApi());
    gh.lazySingleton<_i6.AppRouter>(() => _i6.AppRouter());
    gh.factory<_i7.FirebaseLocalModel>(
        () => _i7.FirebaseLocalModel(fcmToken: gh<String>()));
    gh.factory<_i8.AutoRoute>(() => registerModule.autoRoute);
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {
  _$RegisterModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i4.AppLocalizations get appLocalizations => _i4.AppLocalizations();

  @override
  _i8.AutoRoute get autoRoute => _i8.AutoRoute(
        page: _getIt<_i8.PageInfo<dynamic>>(),
        path: _getIt<String>(),
        usesPathAsKey: _getIt<bool>(),
        guards: _getIt<List<_i8.AutoRouteGuard>>(),
        fullMatch: _getIt<bool>(),
        type: _getIt<_i8.RouteType>(),
        meta: _getIt<Map<String, dynamic>>(),
        maintainState: _getIt<bool>(),
        fullscreenDialog: _getIt<bool>(),
        children: _getIt<List<_i8.AutoRoute>>(),
        title: _getIt<_i8.TitleBuilder>(),
        restorationId: _getIt<_i8.RestorationIdBuilder>(),
        keepHistory: _getIt<bool>(),
        initial: _getIt<bool>(),
        allowSnapshotting: _getIt<bool>(),
      );
}
