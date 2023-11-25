import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(fontSize: 18),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
         backgroundColor: Coloors.DarkGreen,
          foregroundColor: Coloors.DarkBg,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Coloors.greyBg,
      modalBackgroundColor: Coloors.greyBg,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    ),
    dialogBackgroundColor: Coloors.greyBg,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}