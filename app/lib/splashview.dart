import 'package:app/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Importação do Get
import 'dart:async'; // Importação do Timer

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    // Usando WidgetsBinding para garantir que o Timer seja chamado após a construção do widget
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 2), () {
        Get.to(() => LoginView()); // Correção na navegação com Get
      });
    });

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 199, 79),
      body: const Center(
        child: Text(
          'EasyService',
          style: TextStyle(
            color: Colors.brown,
            fontSize:35,
            fontWeight:FontWeight.bold
          ),
        ),
      ),
    );
  }
}
