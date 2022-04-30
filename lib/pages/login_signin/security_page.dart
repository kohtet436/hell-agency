import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hell_agency/pages/login_signin/login_page.dart';

import '../../blocs/login_signin_bloc.dart';
import '../../widgets/login_signin_widgets.dart';
import 'register_page.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginSignInBloc loginSignInBloc=context.read<LoginSignInBloc>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.home,size: 100,),
          Container(
            decoration: BoxDecoration(
             border: Border.all(
               color: Colors.black
             ),

              borderRadius: BorderRadius.circular(20)
            ),


            width: 200,
            height: 50,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                LoginSigninW(title: "Login",index: 0,),

                LoginSigninW(title: "SignIn",index: 1,)
              ],
            ),
          ),
       SizedBox(
        // color: Colors.red,
         height:500,

         width:MediaQuery.of(context).size.width,
         child: PageView.builder(

           controller: loginSignInBloc.controller,
             itemCount: 2,
             onPageChanged: (e){
             loginSignInBloc.animatedChange;
             },
             itemBuilder: (_,i)=>
                Column(
                  children: [
                    i==0? const LoginPage():const RegisterPage()
                  //  Text(i==0?"Login":"Sign")
                  ],
                )



         ),
       )
        ],
      ),
    );
  }
}
