import 'package:hive_flutter/adapters.dart';

import 'firabase_local_storage/model/firebase_local_model.dart';

initHive() async{
  await Hive.initFlutter();
  registerAdapters();
  await openBoxes();
}

registerAdapters() {
//add adapters for each hive model created
  Hive.registerAdapter(FirebaseLocalModelAdapter());
}

openBoxes() async {
//open all hive boxes
  boxFirebase = await Hive.openBox(firebaseBox);
}

// current key for all one valued models
const String current = "current";


//declare all boxes here
//late Box boxUser;
late Box boxFirebase;


//declare all boxNames here
//const String userBox = "UserBox";
const String firebaseBox = "firebaseBox";

