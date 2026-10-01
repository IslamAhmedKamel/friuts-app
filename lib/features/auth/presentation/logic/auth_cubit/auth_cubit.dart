import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/features/auth/data/auth_repo/auth_repo_implement.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepoImplement authRepo;

  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AuthCubit({required this.authRepo}) : super(AuthInitial());

  // ============================================================
  // LOGIN
  // ============================================================

  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      try {
        emit(LoginLoading());

        await authRepo.login(
          email: emailControler.text.trim(),
          password: passwordControler.text.trim(),
        );

        emit(LoginSuccess());
      } catch (e) {
        emit(LoginFailure(_getErrorMessage(e)));
      }
    }
  }

  // ============================================================
  // REGISTER
  // ============================================================

  Future<void> register() async {
    if (formKey.currentState!.validate()) {
      try {
        emit(RegisterLoading());

        await authRepo.register(
          email: emailControler.text.trim(),
          password: passwordControler.text.trim(),
        );

        emit(RegisterSuccess());
      } catch (e) {
        emit(RegisterFailure(_getErrorMessage(e)));
      }
    }
  }

  // ============================================================
  // GOOGLE LOGIN
  // ============================================================

  Future<void> signInWithGoogle() async {
    try {
      emit(GoogleLoginLoading());

      await authRepo.signInWithGoogle();

      emit(GoogleLoginSuccess());
    } catch (e) {
      log(e.toString());
      emit(GoogleLoginFailure(_getErrorMessage(e)));
    }
  }

  // ============================================================
  // LOGOUT
  // ============================================================

  Future<void> logout() async {
    emit(LogoutLoading());

    try {
      await authRepo.logout();

      emit(LogoutSuccess());
    } catch (e) {
      emit(LogoutFailure(_getErrorMessage(e)));
    }
  }

  // ============================================================
  // ERROR HANDLER
  // ============================================================

  String _getErrorMessage(Object error) {
    final message = error.toString();

    if (message.startsWith('Exception: ')) {
      return message.replaceFirst('Exception: ', '');
    }

    return message;
  }
}
