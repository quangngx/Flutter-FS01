import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';



@JsonSerializable()
class User {
  final String? name;
  final Gender? gender;
  final DateTime? dob;

  User({this.name, this.gender, this.dob});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}


enum Gender { male, female, other }

@JsonSerializable()
class Results {
  List<User> results = [];
  Results(this.results);

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
