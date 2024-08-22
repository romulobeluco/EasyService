import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Editar Perfil',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 78, 55, 36),
              ),
            ),
            SizedBox(height: 24),
            CircleAvatar(
              radius: 60,
              backgroundColor: const Color.fromARGB(255, 78, 55, 36),
              child: Icon(
                Icons.camera_alt,
                size: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Toque na foto para alterar',
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'O nome é obrigatório';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: 'Descrição',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'A descrição é obrigatória';
                }
                return null;
              },
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // Aqui você pode salvar as alterações, se necessário.
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Perfil atualizado com sucesso!')),
                  );
                }
              },
              child: Text('Salvar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 78, 55, 36),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
