import 'package:flutter/material.dart';

class IAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? child;
  final double height;
  final Color? color;

  const IAppBar({
    Key? key,
    this.child,
    this.height = kToolbarHeight,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: color ?? Colors.red,
      alignment: Alignment.center,
      child: child,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
