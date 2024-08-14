import 'package:flutter/material.dart';

class PasswordRecoveryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recuperação de Senha'),
      ),
      body: Center(
        child: Text(
          'Página de recuperação de senha',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
