import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/login_signin_bloc.dart';
class LoginSigninW extends StatelessWidget {
 final String title;
 final int index;

  const LoginSigninW({Key? key,required this.title,required this.index}) : super(key: key);
// LoginSigninW({required this.title});

  @override
  Widget build(BuildContext context) {
    LoginSignInBloc loginbloc=context.read<LoginSignInBloc>();
    return  BlocBuilder<LoginSignInBloc,int>(builder: (BuildContext context, state) => Expanded(
      child: GestureDetector(
        onTap: (){
          loginbloc.animatedChange(index);
        },
        child: Container(
           //height: 200,
            decoration:  BoxDecoration(
                color:state==index? Colors.blue:null,
                borderRadius: state==0?const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)
                ):const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))
            ),
            child:  Align(
                alignment: Alignment.center, child: Text(title)


            )),
      ),
    )
    );
  }
}
