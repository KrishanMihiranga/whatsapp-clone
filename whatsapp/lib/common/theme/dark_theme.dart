import 'package:flutter/material.dart';
import 'package:whatsapp/common/Utils/coloors.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';

ThemeData darkTheme(){
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    backgroundColor: Coloors.DarkBg,
    scaffoldBackgroundColor: Coloors.DarkBg,
    extensions: [ 
      CustomThemeExtension.darkMode,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
         backgroundColor: Coloors.DarkGreen,
          foregroundColor: Coloors.DarkBg,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent,
      ),
    ),
  );
}