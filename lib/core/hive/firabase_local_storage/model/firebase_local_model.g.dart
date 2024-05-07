// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_local_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FirebaseLocalModelAdapter extends TypeAdapter<FirebaseLocalModel> {
  @override
  final int typeId = 0;

  @override
  FirebaseLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FirebaseLocalModel(
      fcmToken: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, FirebaseLocalModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.fcmToken);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FirebaseLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
