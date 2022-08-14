import 'package:flutter/material.dart';
import '../../utils/color_utils.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette({
    Key? key,
    // así se reciben en el constructor, por ejemplo
    required this.baseColor,
    required this.baseColor1,
    required this.baseColor2,
    required this.baseColor3,
    required this.base1Color,
    required this.base1Color1,
    required this.base1Color2,
    required this.base1Color3,
    required this.callback,
  }) : super(key: key);

  // atributos de la clase, por ejemplo
  final String baseColor;
  final String baseColor1;
  final String baseColor2;
  final String baseColor3;
  final String base1Color;
  final String base1Color1;
  final String base1Color2;
  final String base1Color3;

  // también se puede tener como un atributo un callback, necesiario ya que es un
  // widget sin estado, por ejemplo
  final Function(String) callback;

  @override
  Widget build(BuildContext context) {
    // padding para crear espacio alrededor del widget
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      // vamos a mostrar los elementos en un row
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: GestureDetector(
                  child: Container(
                    height: 100,
                    color: ColorUtils.FromHex(baseColor)
                  ),)
                ),
                Expanded(
                flex: 3,
                child: GestureDetector(
                  child: Container(
                    height: 100,
                    color: ColorUtils.FromHex(baseColor1)
                  ),)
                ),
                Expanded(
                flex: 2,
                child: GestureDetector(
                  child: Container(
                    height: 100,
                    color: ColorUtils.FromHex(baseColor2)
                  ),)
                ),
                Expanded(
                flex: 1,
                child: GestureDetector(
                  child: Container(
                    height: 100,
                    color: ColorUtils.FromHex(baseColor3)
                  ),)
                )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: GestureDetector(
                  child: Container(
                    height: 100,
                    color: ColorUtils.FromHex(base1Color)
                  ),)
                ),
                Expanded(
                flex: 3,
                child: GestureDetector(
                  child: Container(
                    height: 100,
                    color: ColorUtils.FromHex(base1Color1)
                  ),)
                ),
                Expanded(
                flex: 2,
                child: GestureDetector(
                  child: Container(
                    height: 100,
                    color: ColorUtils.FromHex(base1Color2)
                  ),)
                ),
                Expanded(
                flex: 1,
                child: GestureDetector(
                  child: Container(
                    height: 100,
                    color: ColorUtils.FromHex(base1Color3)
                  ),)
                )
            ],
          )
        ],
      )
    );
  }
}