import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
part 'firebase_local_model.g.dart';
@Injectable()

@HiveType(typeId: 0)
class FirebaseLocalModel {

  @HiveField(0)
  late  String? fcmToken = "";

  FirebaseLocalModel({
    required this.fcmToken});
}