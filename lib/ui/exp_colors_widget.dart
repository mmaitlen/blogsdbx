import 'package:blogsdbx/ui/ui_const.dart';
import 'package:flutter/material.dart';

///
/// Simple screen to try out some color ideas
///
class ExpColorsWidget extends StatelessWidget {
  const ExpColorsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _constructColorSlice(Color color) => Expanded(
          child: Container(
            color: color,
          ),
        );
    Widget _constructBody() {
      return SizedBox(
        height: 200,
        child: Row(
          children: [
            _constructColorSlice(colorCoolBlue),
            _constructColorSlice(colorCoolBlue.opacity75),
            _constructColorSlice(colorCoolBlue.opacity50),
            _constructColorSlice(colorCoolBlue.opacity25),
            _constructColorSlice(colorCoolBlue.opacity10),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors Experiment"),
      ),
      body: _constructBody(),
    );
  }
}
