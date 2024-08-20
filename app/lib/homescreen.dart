// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.only(top:20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 20,),
              Column(
                children: [
            Container(
              height: 150,
              width: 150,
              color:const Color.fromARGB(255, 255, 0, 0),
              child: Container(
                  height: 100,
                  width: 100,
                  child:Image.network('https://www.desentupidorasuprematec.com.br/wp-content/uploads/2016/10/suprematec-desentupidora-servico-encanador-profissional-1.jpg'),
                ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 150,
              width: 150,
              color:const Color.fromARGB(255, 250, 0, 0),
              child: Container(
                  height: 100,
                  width: 100,
                  child:Image.network('https://www.desentupidorasuprematec.com.br/wp-content/uploads/2016/10/suprematec-desentupidora-servico-encanador-profissional-1.jpg'),
                ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 150,
              width: 150,
              color:const Color.fromARGB(255, 255, 0, 0),
              child: Container(
                  height: 100,
                  width: 100,
                  child:Image.network('https://www.desentupidorasuprematec.com.br/wp-content/uploads/2016/10/suprematec-desentupidora-servico-encanador-profissional-1.jpg'),
                ),
            ),
            SizedBox(height: 20,),
            ] 
            ),
            SizedBox(width: 30,),
            
            Column(
              children: [
                SizedBox(height: 20,),
                Text('Encandors'),
                SizedBox(height: 150,),
                Text('Encandors'),
                SizedBox(height: 150,),
                Text('Encandors'),
              ],
            ),
          
          ],
          ),
        )
      ), 
    );
  }
}