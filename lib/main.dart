import 'package:case_management_tool/app.dart';
import 'package:case_management_tool/core/firebase/firebase_api.dart';
import 'package:case_management_tool/core/hive/hive_storage_init.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/locator.dart';
import 'firebase_options.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
setupLocators();
await initHive();
await FirebaseApi().initNotifications();

CaseManagementApp.run();
}


enum Environment {
  dev,
  uat,
  prod
}





