import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cache_helper.dart';
import 'cubit/cubit.dart';
import 'cubit/state.dart';


class LoginScreen extends StatelessWidget {
  var emailContrroler = TextEditingController();
  var passwordContrroler = TextEditingController();
  bool isPassword = true;
  var FormKey=GlobalKey<FormState>();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSucess) {


            if (state.loginModel.state) {
              cacheHelper.saveData(key: 'token', value: state.loginModel.token).
              then((value) {

                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ShopLayout()), (route) => false);
              });



            } else {

              print(state.loginModel.message);
              ShowToast(message: state.loginModel.message);


            }
          }
        },
        builder: (context, state) {
          LoginCubit _loginCubit = LoginCubit.get(context);
          return   Scaffold(
              appBar: AppBar(
title:Text("df",style: TextStyle(fontFamily: ),),
                actions: [
                  IconButton(
                      onPressed: (){
                        AppCubit.get(context).change();
                      },
                      icon: Icon(Icons.brightness_4_outlined)

                  ),
                ],
              ),
              body: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: FormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'LOGIN',

                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            ''
                                'Login now to browse our hot offers',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value)
                            {
                              if(value!.isEmpty)
                                return 'please enter email addrees ';
                            },
                            controller: emailContrroler,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              prefixIcon: Icon(Icons.email_outlined),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(

                            validator: (value)
                            {
                              if(value!.isEmpty)
                                return 'please enter password ';
                            },
                            controller: passwordContrroler,
                            obscureText:LoginCubit.get(context).isPassword,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(icon: Icon(LoginCubit.get(context).suffix),
                                onPressed: (){
                                  LoginCubit.get(context).changePasswordVisibality();
                                },),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ConditionalBuilder(
                            condition: state is !LoginLoading,


                            builder:(context)=>Container(
                              width: double.infinity,
                              color: Colors.blue,
                              child: MaterialButton(
                                onPressed: () {
                                  if (FormKey.currentState!.validate()) {
                                    LoginCubit.get(context).userLogin(email: emailContrroler.text, password: passwordContrroler.text);
                                  }
                                },
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                                ),
                              ),
                            ),
                            fallback:(context)=>Center(child: CircularProgressIndicator()) ,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text('Don\'t have an account ?'),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterScreen()));
                                  },
                                  child: Text('Register Now'))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ));
        },
      ),
    );
  }
}
