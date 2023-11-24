import 'package:flutter/material.dart';
import 'package:whatsapp/common/Utils/coloors.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: (){},
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langBtnHighlightColor,
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.language,
                color: Coloors.DarkGreen,
              ),
              SizedBox(width: 10,),
              Text('English',
              style: TextStyle(
                color: Coloors.DarkGreen,
              ),
              ),
              SizedBox(width: 10,),
              Icon(
                Icons.keyboard_arrow_down,
                color: Coloors.DarkGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}