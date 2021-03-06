


import '../../login_model.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSucess extends LoginState {
 final ShoLoginModel loginModel;

  LoginSucess(this.loginModel);
}

class LoginError extends LoginState {
  final String errorMessage;

  LoginError(this.errorMessage);
}

class ChangePasswordVisibality extends LoginState {}