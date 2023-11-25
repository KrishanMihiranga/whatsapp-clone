import 'package:flutter/material.dart';
import 'package:whatsapp/common/Utils/coloors.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, 
    this.controller, 
    this.hintText, 
    this.readOnly, 
    this.textAlign, 
    this.keyboardType, 
    this.prefixText, 
    this.onTap, 
    this.suffixIcon, 
    this.onChanged, 
    this.fontSize, 
    this.autofocus
  });

  final TextEditingController? controller;
  final String? hintText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final String? prefixText;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final double? fontSize;
  final bool? autofocus;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      readOnly:  readOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      keyboardType: readOnly == null ? keyboardType : null,
      onChanged: onChanged,
      style: TextStyle(fontSize: fontSize),
      autofocus: autofocus ?? false,
      decoration: InputDecoration(
        isDense: true,
        prefixText: prefixText,
        suffix: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(
          color: context.theme.greyColor,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Coloors.DarkGreen),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Coloors.DarkGreen, width: 2),
        ),
      ),
    );
  }
}