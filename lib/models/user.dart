import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String name;
  final String job;

  const User({
    required this.name,
    required this.job,
  });

  @override
  List<Object> get props => [name, job];
}
