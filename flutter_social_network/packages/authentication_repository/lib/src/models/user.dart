import 'package:equatable/equatable.dart';

/// {@template user}
/// User model
///
/// [User.empty] represents an unauthenticated user.
/// {@endtemplate}
class User extends Equatable {
  ////// {@macro User}
  const User({this.email, required this.id, this.name, this.photo});

  /// The current user's email
  final String? email;

  /// The current user's id
  final String id;

  /// The current user's name
  final String? name;

  /// The current user's photo Url
  final String? photo;

  /// Empty user which represents an unauthenticated user.
  static const empty = User(id: '');

  /// Convinience getter to determine whether the current user is empty
  bool get isEmpty => this == User.empty;

  /// Convinience getter to determine whether the current user is not empty
  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [email, id, name, photo];
}
