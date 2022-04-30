import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hell_agency/pages/contact_page.dart';
import 'package:hell_agency/pages/person_page.dart';
import 'package:hell_agency/pages/shopping_bag.dart';
import 'package:hell_agency/pages/workspace_page.dart';

import '../blocs/navigator_bloc.dart';
import '../bottom_items/bottom_navigationbar.dart';
import 'homepage.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  late final Navigatorbloc bloc = context.read<Navigatorbloc>();
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _homelist = [
      const HomePage(),
      const ShoppingBag(),
      const WorkSpacePage(),
      const ContactPage(),
      const PersonPage(),
    ];
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 247, 1),
      // body: BlocBuilder<Navigatorbloc, int>(
      //   builder: (_, nav) => [nav],
      // ),
      body: PageView.builder(
          controller: bloc.pageController,
          onPageChanged: (a) {
            bloc.animatedTo(a);
          },
          itemCount: _homelist.length,
          itemBuilder: (_, i) => _homelist[i]),
      bottomNavigationBar: const Bottomnavigationbar(),
    );
  }
}
