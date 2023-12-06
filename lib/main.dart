import 'package:e_commerce_app/auth/customer_login.dart';
import 'package:e_commerce_app/auth/customer_signup.dart';
import 'package:e_commerce_app/auth/supplier_login.dart';
import 'package:e_commerce_app/auth/supplier_signup.dart';
import 'package:e_commerce_app/main_screens/customer_home.dart';
import 'package:flutter/material.dart';

import 'main_screens/supplier_home.dart';
import 'main_screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome_screen',
      routes: {
        '/welcome_screen': (context) => const WelcomScreen(),
        '/customer_home': (context) => const CustomerHomeScreen(),
        '/supplier_home': (context) => const SupplierHomeScreen(),
        '/customer_signup': (context) => const CustomerRegister(),
        '/customer_login': (context) => const CustomerLogin(),
        '/supplier_signup': (context) => const SupplierRegister(),
        '/supplier_login': (context) => const SupplierLogin(),
      },
    );
  }
}
