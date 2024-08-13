import 'package:app/widgets/textformglobal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:SafeArea(
          child: Container(
            width:double.infinity,
            padding: const EdgeInsets.all(15.0),
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child:Text(
                    'EasyService',
                    style: TextStyle(
                      color:Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ),
  const SizedBox(height:30),
  Text(
    'Digite seu email',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
  ),   
  const SizedBox(height:15),
  TextFormGlobal(controller: emailController,
  text: 'Email',
  obscure: false,
  textInputType: TextInputType.emailAddress,
  ),
  TextFormGlobal(controller: passwordController, 
  text:'Senha',
   textInputType: TextInputType.text, 
   obscure: true)
           ],
            )
          )
        )
      )
     
    );
  }
}
