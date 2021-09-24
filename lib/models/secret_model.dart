import 'package:equatable/equatable.dart';

class SecretModel extends Equatable {
  final String name;
  final String userName;
  final String password;

  const SecretModel({
    required this.name,
    required this.userName,
    required this.password,
  });

  @override
  get props => [name, userName, password];
}
