import 'package:blogsdbx/ui/exp_colors_widget.dart';
import 'package:flutter/material.dart';

enum MenuOptions {
  colors,
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return PopupMenuButton<MenuOptions>(
      icon: const Icon(Icons.ac_unit),
      onSelected: (MenuOptions result) async {
        switch (result) {
          case MenuOptions.colors:
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExpColorsWidget(),
                ));
            break;
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuOptions>>[
        const PopupMenuItem<MenuOptions>(
            value: MenuOptions.colors, child: Text("Colors Experiment")),
      ],
    );
  }
}
