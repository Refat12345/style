import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../Screens/allexhibition.dart';
import '../Screens/favoritesexhibition.dart';
import '../components/components.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) =>BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens =[
    FavoritesExhibition(),
    AllExhibition(),
  ];

  List<String> titles =[
    "FavoritesExhibition",
    "AllExhibition",
  ];
  void changeIndex(int index,context  ){
    currentIndex = index;
    if(index ==1)
      Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoritesExhibition()));
      else
      Navigator.push(context, MaterialPageRoute(builder: (context)=>AllExhibition()));
    emit(AppChangeBottomNavBarState());
  }







}

