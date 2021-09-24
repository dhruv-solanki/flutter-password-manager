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

  static const secrets = [
    SecretModel(
      name: 'Google',
      userName: 'exmaple@gamil.com',
      password: 'example@123',
    ),
    SecretModel(
      name: 'Slack',
      userName: 'slack@gamil.com',
      password: 'slack@123',
    ),
    SecretModel(
      name: 'Microsoft',
      userName: 'microsoft@gamil.com',
      password: 'micro@123',
    ),
    SecretModel(
      name: 'GitHub',
      userName: 'git@gamil.com',
      password: 'git@123',
    ),
  ];
}
