import 'package:flutter/material.dart';

class ColorDef {
  final Color baseColor;
  final List<double> opacityList;

  ColorDef(this.baseColor, this.opacityList);
}

const colorCoolBlue = Color(0xFF3BB2E2);
const colorDeepRed = Color(0xFF940000);
const colorForestGreen = Color(0xFF228B22);
const colorSimpleOrange = Color(0xFFFFA500);

const defaultOpacityList = [1.0, 0.75, 0.5, 0.25, 0.10];

extension ColorOpacity on Color {
  Color get opacity75 => withOpacity(0.75);
  Color get opacity50 => withOpacity(0.5);
  Color get opacity25 => withOpacity(0.25);
  Color get opacity10 => withOpacity(0.1);
}

final colorList = [
  ColorDef(colorCoolBlue, defaultOpacityList),
  ColorDef(colorDeepRed, defaultOpacityList),
  ColorDef(colorForestGreen, [1.0, 0.8, 0.6, 0.4]),
  ColorDef(
      colorSimpleOrange, [1.0, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1]),
];

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

    Widget _constructColorRow(Color color,
            {opacityList = defaultOpacityList}) =>
        Expanded(
          child: Row(children: [
            ...opacityList
                .map(
                  (opacity) => _constructColorSlice(color.withOpacity(opacity)),
                )
                .toList()
          ]),
        );

    Widget _constructBody(List<ColorDef> colorList) => Column(
          children: [
            ...colorList
                .map((colorDef) => _constructColorRow(colorDef.baseColor,
                    opacityList: colorDef.opacityList))
                .toList()
          ],
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors Experiment"),
      ),
      body: _constructBody(colorList),
    );
  }
}
