
import 'dart:convert';
import 'package:case_management_tool/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:case_management_tool/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'constants.dart';
import 'firebase/firebase_api.dart';
import 'hive/hive_storage_init.dart';
import 'locator.dart';
import 'navigation/app_router.dart';

class CaseManagementApp {

  static appInit(Environment env) async {
    WidgetsFlutterBinding.ensureInitialized();
    await configFlavor(await readEnvironment(selectEnvironment(env)));
    await initHive();
    await FirebaseApi().initNotifications();
  }

  static void run(){
    final appRouter = locator<AppRouter>();
    MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
      localizationsDelegates: const[
        AppLocalizations.delegate
      ],
      supportedLocales: AppSupportedLocals.appSupportedLocals,
      themeMode: ThemeMode.system,
      theme: AppThemeData.appThemeData,
    );
  }
}



  String selectEnvironment(Environment env) {
    String environment = "";

    switch (env) {
      case Environment.dev:
        environment = "development.json";
        break;
      case Environment.uat:
        environment = "user_acceptance.json";
        break;
      case Environment.prod:
        environment = "production.json";
        break;
      default:
        environment = "development.json";
    }
    return "environments/$environment";
  }

  Future<Map<String, dynamic>> readEnvironment(String uri) async {
    try {
      final String response = await rootBundle.loadString(uri);
      final Map<String, dynamic> data = await json.decode(response);
      return data;
    } catch (ex) {
      return {"error": ex.toString()};
    }
  }

  configFlavor(Map<String, dynamic> data) {
    FlavorConfig(
        name: data["name"],
        variables: data);
  }
