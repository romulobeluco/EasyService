import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'forgot_password_screen.dart';
import 'register_screen.dart';

void main() {
  runApp(EasyServiceApp());
}

class EasyServiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'easyService',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/forgot_password': (context) => ForgotPasswordScreen(),
        '/register': (context) => RegisterScreen(),
      },
    );
  }
}
