import 'package:flutter/material.dart';
import 'package:hell_agency/pages/notification_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Name"),
        actions: [
          const NotificationButton(),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }
}
