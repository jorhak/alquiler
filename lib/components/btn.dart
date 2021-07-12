import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BTN extends StatelessWidget {
  const BTN({
    Key? key,
    this.onPress,
    this.text,
    this.color,
  }) : super(key: key);

  final Function()? onPress;
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      margin: const EdgeInsets.all(10.0),
      child: TextButton(
        onPressed: onPress,
        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
