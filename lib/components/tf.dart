import 'package:flutter/material.dart';

class TF extends StatelessWidget {
  const TF({
    Key? key,
    this.controller,
    this.hintText,
    this.helpText,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword,
    this.enable,
    this.readOnly,
    this.borderColor,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? hintText;
  final String? helpText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool? isPassword;
  final bool? enable;
  final bool? readOnly;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: null == readOnly ? false : true,
      obscureText: null == isPassword ? false : true,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.greenAccent,
            width: 1.0,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.greenAccent,
            width: 1.0,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.teal,
            width: 1.0,
          ),
        ),
        hintText: hintText ?? '',
        helperText: helpText ?? '',
        prefixIcon: null == prefixIcon ? null : Icon(prefixIcon),
        suffix: null == suffixIcon ? null : Icon(suffixIcon),
        enabled: null == enable ? true : false,
      ),
    );
  }
}
