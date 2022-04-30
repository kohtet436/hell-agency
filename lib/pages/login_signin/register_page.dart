import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 50),
      child: Column(

        children: [
          const TextField(

            decoration: InputDecoration(
              labelText:"Email",
              border: OutlineInputBorder(

              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(

            decoration: InputDecoration(
              labelText:"Password",
              border: OutlineInputBorder(

              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(

            decoration: InputDecoration(
              labelText:"Confirmed Password",
              border: OutlineInputBorder(

              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(onPressed: (){}, child: Text("Register"))),
          OutlinedButton.icon(onPressed: (){}, icon:const FaIcon(FontAwesomeIcons.google), label: const Text("SignIn with Google"))

        ],
      ),
    );
  }
}
