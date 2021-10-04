import 'package:flutter/material.dart';

enum MenuOptions {
  tbd,
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return PopupMenuButton<MenuOptions>(
      icon: const Icon(Icons.ac_unit),
      onSelected: (MenuOptions result) async {
        switch (result) {
          case MenuOptions.tbd:
            // Navigator.push(
                // context,
                // MaterialPageRoute(
                //   builder: (context) => const ExpColorsWidget(),
                // ));
            break;
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuOptions>>[
        const PopupMenuItem<MenuOptions>(
            value: MenuOptions.tbd, child: Text("TBD")),
      ],
    );
  }
}
