import 'package:case_management_tool/core/hive/firabase_local_storage/model/firebase_local_model.dart';
import 'package:case_management_tool/core/hive/hive_storage_init.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class FirebaseApi{
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications()async{
    await _firebaseMessaging.requestPermission();
    var fcmToken = await _firebaseMessaging.getToken();
    print(fcmToken);
  //  FirebaseMessaging.onBackgroundMessage((message) => handleBackgroundMessage(message));
    FirebaseLocalModel firebaseLocalModel = FirebaseLocalModel(fcmToken: fcmToken.toString());
    boxFirebase.put(current, firebaseLocalModel);

  }
}

Future<void> handleBackgroundMessage(RemoteMessage message)async{

}

void handleMessage(RemoteMessage? message){
  if(message == null) return;
   //navigatorKey.currentState?.push(BottomNavigationRoute.name);
}