import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Dialog'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color palette app'),
          actions: [
            IconButton(onPressed: showDialog, icon: Icon(Icons.info_outline))
          ],
        ),
        // https://colorhunt.co/
        body: SingleChildScrollView(
            child: Column(
          children: [
            ColorPalette(
              baseColor: '002B5B',
              baseColor1: '2B4865',
              baseColor2: '256D85',
              baseColor3: '8FE3CF',
              callback: showColor,
            ),
            ColorPalette(
                baseColor: '293462',
                baseColor1: '1CD6CE',
                baseColor2: 'FEDB39',
                baseColor3: 'D61C4E',
                callback: showColor),
            ColorPalette(
              baseColor: '003865',
              baseColor1: 'EF5B0C',
              baseColor2: 'D4F6CC',
              baseColor3: '3CCF4E',
              callback: showColor,
            ),
            ColorPalette(
                baseColor: '513252',
                baseColor1: '7A4069',
                baseColor2: 'CA4E79',
                baseColor3: 'FFC18E',
                callback: showColor),
            ColorPalette(
              baseColor: 'F7EC09',
              baseColor1: 'EB1D36',
              baseColor2: 'F7EC09',
              baseColor3: 'EB1D36',
              callback: showColor,
            ),
            ColorPalette(
                baseColor: 'EB1D36',
                baseColor1: 'F9F2ED',
                baseColor2: 'EB1D36',
                baseColor3: 'F9F2ED',
                callback: showColor)
          ],
        )));
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
