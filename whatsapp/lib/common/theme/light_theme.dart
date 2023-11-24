import 'package:flutter/material.dart';
import 'package:whatsapp/common/Utils/coloors.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';

ThemeData lightTheme(){
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    backgroundColor: Coloors.lightBg,
    scaffoldBackgroundColor: Coloors.lightBg,
    extensions: [ 
      CustomThemeExtension.lightMode,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
         backgroundColor: Coloors.DarkGreen,
          foregroundColor: Coloors.lightBg,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent,
      ),
    ),
  );
}