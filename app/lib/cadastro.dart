import 'package:app/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/buttonglobal.dart';
import 'package:app/widgets/textformglobal.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});
  
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Criar Conta',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Preencha os campos abaixo para criar sua conta',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                TextFormGlobal(
                  controller: nameController,
                  text: 'Nome',
                  obscure: false,
                  textInputType: TextInputType.name,
                ),
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),
                TextFormGlobal(
                  controller: passwordController,
                  text: 'Senha',
                  obscure: true,
                  textInputType: TextInputType.text,
                ),
                TextFormGlobal(
                  controller: confirmPasswordController,
                  text: 'Confirmar Senha',
                  obscure: true,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                ButtonGlobal(
                  text: 'Cadastrar',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginView()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
