import 'package:ecommerce_app/screens/home%20screen/home_screen.dart';
import 'package:ecommerce_app/screens/login%20Screen/login_screen.dart';
import 'package:ecommerce_app/screens/signup%20screen/signup_screen.dart';
import 'package:ecommerce_app/screens/splash%20screen/splash_screen.dart';
import 'package:ecommerce_app/screens/welcome%20screen/welcome_screen.dart';
import 'package:ecommerce_app/screens/wrapper_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Try to initialize Firebase only if no app exists
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    } else {
      Firebase.app(); // ✅ Use existing initialized app
    }
  } catch (e) {
    print('Firebase initialization error: $e');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: const SplashScreen(),
      routes: {
        '/welcome': (_) => const WelcomeScreen(),
        '/wrapper': (_) => const WrapperScreen(),
        '/home': (_) => const HomeScreen(),
        '/login': (_) => const LoginScreen(),
        '/signup': (_) => const SignUpScreen(),
      },
    );
  }
}
