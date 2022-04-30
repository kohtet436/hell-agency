import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hell_agency/blocs/navigator_bloc.dart';
import 'package:hell_agency/pages/initial_page.dart';

import 'blocs/login_signin_bloc.dart';
import 'bottom_items/bottom_navigationbar.dart';
import 'pages/login_signin/security_page.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

      runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider(
          // create: (_) => Navigatorbloc(),
          create: (_) => LoginSignInBloc(),
          // child: const InitialPage(),
          child: const SecurityPage(),
        ));
  }
}
