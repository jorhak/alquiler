import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LINKBTN extends StatelessWidget {
  const LINKBTN({
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
      margin: const EdgeInsets.all(10.0),
      child: TextButton(
        onPressed: onPress,
        child: Text(
          text!,
          style: TextStyle(
            color: color,
          ),
        ),
      ),
    );
  }
}
