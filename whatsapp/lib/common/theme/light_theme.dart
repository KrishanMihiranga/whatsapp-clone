import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
         backgroundColor: Coloors.DarkGreen,
          foregroundColor: Coloors.lightBg,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Coloors.lightBg,
      modalBackgroundColor: Coloors.lightBg,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    ),
  );
}