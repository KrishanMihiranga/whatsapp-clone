import 'package:flutter/material.dart';
import 'package:whatsapp/feature/auth/pages/login_page.dart';
import 'package:whatsapp/feature/auth/pages/user_information_page.dart';
import 'package:whatsapp/feature/auth/pages/verification_page.dart';
import 'package:whatsapp/feature/welcome/pages/welcomePage.dart';

class Routes{
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String verification = 'verification';
  static const String userInfo = 'user-info';

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case welcome:
        return MaterialPageRoute(
          builder: (context) => const WelcomePage(), 
        );
        case login:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(), 
        );
        case verification:
        final Map args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => VerificationPage(
            verificationId: args['verificationId'],
            phoneNumber: args['phoneNumber'],
          ), 
        );
        case userInfo:
        return MaterialPageRoute(
          builder: (context) => const UserInformationPage(), 
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('No Page Route Provided'),
            ),
          ),
        );
    }
  }
}