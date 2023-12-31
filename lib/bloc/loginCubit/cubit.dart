import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sneakers/bloc/loginCubit/status.dart';

class ShopLoginCubit extends Cubit<ShopLoginState>{
  ShopLoginCubit() : super(ShopInitialState());

  static ShopLoginCubit get(context)=> BlocProvider.of(context);

  IconData  suffix = Icons.visibility_outlined ;
bool isPassword = true;
  void changePasswordVisibility(){
    isPassword = !isPassword;
    suffix =isPassword? Icons.visibility_outlined : Icons.visibility_off_outlined;
emit(ShopChangeVisibilityState());
  }
}