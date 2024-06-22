part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class AuthSingUp extends AuthEvent {
  final String email;
  final String name;
  final String password;
  AuthSingUp({
    required this.email,
    required this.name,
    required this.password,
  });
}
