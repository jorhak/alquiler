import 'package:alquiler/utils/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColorCell extends StatelessWidget {
  const ColorCell({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: color,
      ),
      child: context.watch<AppSettings>().appColor == color
          ? const Icon(
              Icons.check_circle,
              color: Colors.white,
            )
          : const SizedBox(),
    );
  }
}
