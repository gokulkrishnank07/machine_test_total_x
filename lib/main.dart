import 'package:flutter/material.dart';
import 'package:total_x_mechine_test/first_page/login_screen.dart';
import 'package:total_x_mechine_test/otp_screen/otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      home: const LoginScreen(),
    );
  }
}




