
import 'package:equatable/equatable.dart';

class User extends Equatable {

  final int id;
  final String name;
  final String avatar;
  final String createAt;

  const User({
    required this.createAt,
    required this.id,
    required this.name,
    required this.avatar

  });


  @override
  // TODO: implement props
  List<Object?> get props => [id];


}