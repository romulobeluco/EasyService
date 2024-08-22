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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              buildProfileItem(
                imageUrl: 'https://img.freepik.com/fotos-gratis/mulher-de-alto-angulo-trabalhando-como-encanador_23-2150746394.jpg?t=st=1724363690~exp=1724367290~hmac=918083ea4b58a9b6c0b7b4ace7d4990928d4d9befcb5625e658bfdb75ef732cd&w=1380',
                description: 'Julia Maria: Encanadora com 10 anos de experiência. Resolvo vazamentos e instalo sistemas de encanamento.',
              ),
              SizedBox(height: 16),
              buildProfileItem(
                imageUrl: 'https://www.nolar.com.br/wp-content/uploads/2021/06/diarista_faxineira-scaled.jpg',
                description: 'Maria Silva: Faxineira dedicada com anos de experiência. Ofereço limpeza detalhada e impecável em qualquer ambiente.',
              ),
              SizedBox(height: 16),
              buildProfileItem(
                imageUrl: 'https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia8579/m-baba-cursos-cpt.jpg',
                description: 'Ana Souza: Babá experiente e carinhosa. Cuido das crianças com segurança e atenção, garantindo um ambiente acolhedor.',
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfileItem({required String imageUrl, required String description}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 78, 55, 36), width: 2), // Cor da borda marrom
        borderRadius: BorderRadius.circular(8), // Borda arredondada
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
            child: Container(
              height: 80,
              width: 80,
              color: const Color.fromARGB(255, 78, 55, 36),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: 80,
                height: 80,
              ),
            ),
          ),
          SizedBox(width: 8), // Espaçamento entre imagem e texto
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Text(
                description,
                style: TextStyle(fontSize: 12), // Fonte menor para um design mais compacto
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
