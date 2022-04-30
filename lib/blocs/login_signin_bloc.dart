import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginSignInBloc extends Cubit<int>{
  PageController _controller=PageController();
  PageController get controller=>_controller;
  LoginSignInBloc() : super(0);
  void animatedChange(int index){
    emit(index);
    controller.animateToPage(index, duration:Duration(milliseconds: 200), curve: Curves.easeInOutCirc);
      }


}