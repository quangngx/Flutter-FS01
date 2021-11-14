import 'package:json_annotation/json_annotation.dart';

import 'picture.dart';

part 'user.g.dart';

enum Gender { male, female, other }

@JsonSerializable()
class User {
  final String? name;
  final DateTime? dob;
  final Gender? gender;
  final String? phone;
  final Picture? picture;

  User({this.name, this.dob, this.gender, this.phone, this.picture});

  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
}
