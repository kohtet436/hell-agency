import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hell_agency/blocs/navigator_bloc.dart';

class NavItem extends StatelessWidget {
  final IconData iconData;
  final int index;
  final String title;

  // const NavItem({Key? key,required this.iconData}) : super(key: key);
  NavItem({required this.iconData, required this.index, required this.title});
  @override
  Widget build(BuildContext context) {
    Navigatorbloc navigatorbloc = context.read<Navigatorbloc>();

    return BlocBuilder<Navigatorbloc, int>(
      builder: (_, state) => GestureDetector(
        onTap: () {
          navigatorbloc.animatedTo(index);
        },
        child: Container(
          decoration: BoxDecoration(
              color: index == state ? Colors.blue : Colors.white,
              borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.of(context).size.width / 6,
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                iconData,
                size: 32,
              ),
              index == state
                  ? Text(
                      title,
                      style: const TextStyle(fontSize: 10, color: Colors.red),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
