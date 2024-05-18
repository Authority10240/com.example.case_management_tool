import 'package:case_management_tool/constants/app_supported_local.dart';
import 'package:case_management_tool/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/locator.dart';
import 'core/navigation/app_router.dart';

class CaseManagementApp {

  static void run(){
    final appRouter = locator<AppRouter>();

    return runApp(
      MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter.config(),
        localizationsDelegates:const[
          AppLocalizations.delegate
        ] ,

        supportedLocales: AppSupportedLocals.appSupportedLocals,
        /// TO DO
        /// dont forget to add app theme
      )
    );
  }
}