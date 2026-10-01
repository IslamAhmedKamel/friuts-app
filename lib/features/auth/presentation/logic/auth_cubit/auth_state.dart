part of 'auth_cubit.dart';

sealed class AuthState {}

/// Initial
final class AuthInitial extends AuthState {}

/// ============================================================
/// LOGIN STATES
/// ============================================================

final class LoginLoading extends AuthState {}

final class LoginSuccess extends AuthState {}

final class LoginFailure extends AuthState {
  final String message;

  LoginFailure(this.message);
}

/// ============================================================
/// REGISTER STATES
/// ============================================================

final class RegisterLoading extends AuthState {}

final class RegisterSuccess extends AuthState {}

final class RegisterFailure extends AuthState {
  final String message;

  RegisterFailure(this.message);
}

/// ============================================================
/// LOGOUT STATES
/// ============================================================

final class LogoutLoading extends AuthState {}

final class LogoutSuccess extends AuthState {}

final class LogoutFailure extends AuthState {
  final String message;

  LogoutFailure(this.message);
}
final class GoogleLoginLoading extends AuthState {}

final class GoogleLoginSuccess extends AuthState {}

final class GoogleLoginFailure extends AuthState {
  final String message;

  GoogleLoginFailure(this.message);
}