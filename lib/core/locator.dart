import 'package:auto_route/auto_route.dart';
import 'package:case_management_tool/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'locator.config.dart';

GetIt locator = GetIt.instance;

@InjectableInit(
    initializerName: 'init',
    preferRelativeImports: true,
    asExtension: true
)
void setupLocators() => locator.init();

@module
abstract class RegisterModule{
// register packages and plugins here
  AutoRoute get autoRoute;

  Dio get dio => Dio();

  AppLocalizations get appLocalizations;

  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;


}