import 'package:flutter/material.dart';
import 'package:whatsapp/common/Utils/coloors.dart';


extension ExtendedTheme on BuildContext{
  CustomThemeExtension get theme{
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension>{
  
  static const lightMode = CustomThemeExtension(
    cricleImageColor: Color(0xFF25D366),
    greyColor: Coloors.lightGrey,
    blueColor: Coloors.lightBlue,
    langBtnBgColor: Color(0xFFF7F8FA),
    langBtnHighlightColor: Color(0xFFE8E8ED),
    authAppbarTextColor: Coloors.lightGreen,
    photoIconBgColor: Color(0xFFF0F2F3),
    photoIconColor: Color(0xFF9DAAB3),

  );
  
  static const darkMode = CustomThemeExtension(
    cricleImageColor: Coloors.DarkGreen,
    greyColor: Coloors.DarkGrey,
    blueColor: Coloors.DarkBlue,
    langBtnBgColor: Color(0xFF182229),
    langBtnHighlightColor: Color(0xFF09141A),
    authAppbarTextColor: Color(0xFFE9EDEF),
    photoIconBgColor: Color(0xFF283339),
    photoIconColor: Color(0xFF61717B),
  );
  
  final Color? cricleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighlightColor;
  final Color? authAppbarTextColor;
  final Color? photoIconBgColor;
  final Color? photoIconColor;
  const CustomThemeExtension({
    this.cricleImageColor,
    this.greyColor, 
    this.blueColor, 
    this.langBtnBgColor, 
    this.langBtnHighlightColor,
    this.authAppbarTextColor,
    this.photoIconBgColor,
    this.photoIconColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith(
  { 
    Color? cricleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnBgColor,
    Color? langBtnHighlightColor,
    Color? authAppbarTextColor,
    Color? photoIconBgColor,
    Color? photoIconColor,
  }
  ) {
    return CustomThemeExtension(
      cricleImageColor: cricleImageColor ?? this.cricleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
      photoIconBgColor: photoIconBgColor ?? this.photoIconBgColor,
      photoIconColor: photoIconColor ?? this.photoIconColor,
      langBtnHighlightColor: langBtnHighlightColor ?? this.langBtnHighlightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if(other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      cricleImageColor: Color.lerp(cricleImageColor, other.cricleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
      authAppbarTextColor: Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),
      langBtnHighlightColor: Color.lerp(langBtnHighlightColor, other.langBtnHighlightColor, t),
    );
  }

}