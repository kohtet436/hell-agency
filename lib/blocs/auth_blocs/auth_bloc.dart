import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hell_agency/blocs/auth_blocs/auth_event.dart';
import 'package:hell_agency/blocs/auth_blocs/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(InitialState()) {
    on<InitialEvent>(onInitial);
  }
}

void onInitial(InitialEvent event, Emitter<AuthState> emit) {
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
}
