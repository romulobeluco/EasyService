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
      Timer(const Duration(seconds: 3), () {
        Get.to(() => LoginView()); // Correção na navegação com Get
      });
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'EasyService',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30), // Espaçamento entre o texto e a logo
            Image.asset(
              'images/logoeasy.png', // Caminho para o arquivo da logo
              width: 300, // Ajuste de tamanho conforme necessário
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
