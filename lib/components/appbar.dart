import 'package:flutter/material.dart';

class IAppBar extends StatelessWidget implements PreferredSizeWidget {
  const IAppBar({
    Key? key,
    this.height = kToolbarHeight,
    this.onPress,
    this.prefixIcon,
    this.text,
    this.color,
  }) : super(key: key);

  final double height;
  final Function()? onPress;
  final IconData? prefixIcon;
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color ?? Colors.red,
      title: Text(text ?? 'Hola'),
      actions: [
        IconButton(
          onPressed: onPress,
          icon: Icon(prefixIcon ?? Icons.access_alarm),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
