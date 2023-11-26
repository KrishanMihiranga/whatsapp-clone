import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/routes/routes.dart';
import 'package:whatsapp/common/widgets/custom_elevated_button.dart';
import 'package:whatsapp/feature/welcome/widgets/language_button.dart';

import '../widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  navigateToLogiPage(context){
    Navigator.of(context).pushNamedAndRemoveUntil(
      Routes.login,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 10,
                ),
                child: Image.asset(
                  'assets/images/wa_circle.png',
                  color: context.theme.cricleImageColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
            Expanded(
              child: Column(
                children: [ 
                  const Text('Welcome to WhatsApp',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const PrivacyAndTerms(),
                  CustomElevatedButton(
                    onPressed: () => navigateToLogiPage(context),
                    text: 'AGREE AND CONTINUE',
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const LanguageButton(),
                ],
              ),
            ),
        ],
      ),
    );
  }
}




