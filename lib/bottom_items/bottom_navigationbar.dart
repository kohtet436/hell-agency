import 'package:flutter/material.dart';

import 'navItem.dart';

class Bottomnavigationbar extends StatelessWidget {
  const Bottomnavigationbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        NavItem(
          iconData: Icons.home_outlined,
          index: 0,
          title: "Home",
        ),
        NavItem(
          iconData: Icons.shopping_bag,
          index: 1,
          title: "Bag",
        ),
        NavItem(
            iconData: Icons.workspaces_outline, index: 2, title: "Workspace"),
        NavItem(
          iconData: Icons.phone,
          index: 3,
          title: "Phone",
        ),
        NavItem(
          iconData: Icons.person_outline_sharp,
          index: 4,
          title: "Profile",
        )
      ],
    );
  }
}
