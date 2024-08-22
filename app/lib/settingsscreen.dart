import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen> {
  double _distance = 5.0; // Valor inicial do slider

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
              'Configurações',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 78, 55, 36),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Fale com ajuda',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Distância',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '${_distance.toStringAsFixed(1)} km',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Slider(
                    value: _distance,
                    min: 1.0,
                    max: 100.0,
                    divisions: 99,
                    onChanged: (value) {
                      setState(() {
                        _distance = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Aqui você pode adicionar a lógica para salvar as configurações, se necessário.
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Configurações salvas com sucesso!')),
                );
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
