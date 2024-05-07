import 'package:case_management_tool/features/authentication/domain/entites/user.dart';

class UserModel extends User{

  const UserModel({
    required super.createAt,
   required super.avatar,
   required super.id,
   required super.name
  });

  User copyWith({
    int? id,
    String? name,
    String? avatar,
    String? createAt,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
      createAt: createAt ?? this.createAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'avatar': this.avatar,
      'createAt': this.createAt,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as int,
      name: map['name'] as String,
      avatar: map['avatar'] as String,
      createAt: map['createAt'] as String,
    );
  }
}



