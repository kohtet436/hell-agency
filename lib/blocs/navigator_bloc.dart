import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Navigatorbloc extends Cubit<int> {
  Navigatorbloc() : super(0);
  PageController pageController=PageController();
 // PageController get controller=>_pageController;
  void dispose() {
    pageController.dispose();
  }
  void animatedTo(int index) {
    pageController.animateToPage(index, duration:Duration(milliseconds: 100), curve: Curves.linearToEaseOut);
    emit(index);
  }
}
