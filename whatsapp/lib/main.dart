import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp/common/routes/routes.dart';
import 'package:whatsapp/common/theme/dark_theme.dart';
import 'package:whatsapp/common/theme/light_theme.dart';
import 'package:whatsapp/feature/auth/controller/auth_controller.dart';
import 'package:whatsapp/feature/home/pages/home_page.dart';
import 'package:whatsapp/feature/welcome/pages/welcomePage.dart';
import 'package:whatsapp/firebase_options.dart';
import 'package:firebase_app_check/firebase_app_check.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
await FirebaseAppCheck.instance.activate();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp clone',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: ref.watch(userInfoAuthProvider).when(
        data: (user){
          if(user == null) return const WelcomePage();
          return const HomePage();
        }, 
        error: (error, trace){
          return const Scaffold(
            body: Center(
              child: Text('Something went wrong!'),
            ),
          );
        }, 
        loading: (){
          return const Scaffold(
            body: Center(
              child: Icon(
                Icons.chat,
                size: 30,
              ),
            ),
          );
        },
      ),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
