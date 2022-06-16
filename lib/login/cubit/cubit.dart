import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:style/login/cubit/state.dart';

import '../../end_points.dart';
import '../../login_model.dart';
import '../../remote/dio_helper.dart';



class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  // make object of the cubit
  static LoginCubit get(context) => BlocProvider.of(context);
  late ShoLoginModel _loginModel;

  void userLogin({
    required String email,
    required String password,
  }) {

    emit(LoginLoading());

    DioHelper.postData(
      url: '${url}/login',
      data: {
        'email': email,
        'password': password,
      },
    ).then((value) {
      _loginModel = ShoLoginModel.fromjson(value.data);
     print(_loginModel.state);

      emit(LoginSucess(_loginModel));
    }).catchError((errorMessage) {
      emit(LoginError(errorMessage.toString()));
    });
  }

// password text field
  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibality() {
    isPassword = !isPassword;
    suffix =
    isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;

    emit(ChangePasswordVisibality());
  }
}