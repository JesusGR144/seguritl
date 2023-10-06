import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 70.0, // Altura personalizada para la parte superior azul
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF1b396a),
                ),
                child: Text(
                  'Menú',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            ListTile(
              title: const Text('Chat'),
              onTap: () {
                Navigator.pushNamed(context, '/chat');
              },
            ),
            ListTile(
              title: const Text('Información'),
              onTap: () {
                Navigator.pushNamed(context, '/info');
              },
            ),
            ListTile(
              title: const Text('Registro de entrada'),
              onTap: () {
                Navigator.pushNamed(context, '/registro_entrada');
              },
            ),
            ListTile(
              title: const Text('Registro de salida'),
              onTap: () {
                Navigator.pushNamed(context, '/registro_salida');
              },
            ),
            ListTile(
              title: const Text('Expediente'),
              onTap: () {
                Navigator.pushNamed(context, '/expediente');
              },
            ),
            ListTile(
              title: const Text('Registro de Datos'),
              onTap: () {
                Navigator.pushNamed(context, '/registro_completo');
              },
            ),
            ListTile(
              title: const Text('Eliminar'),
              onTap: () {
                Navigator.pushNamed(context, '/eliminar');
              },
            ),
            ListTile(
              title: const Text('Generar QR'),
              onTap: () {
                Navigator.pushNamed(context, '/generar_qr');
              },
            ),
            ListTile(
              title: const Text('Rondines'),
              onTap: () {
                Navigator.pushNamed(context, '/rondines');
              },
            ),
            ListTile(
              title: const Text('Estadisticas'),
              onTap: () {
                Navigator.pushNamed(context, '/estadisticas');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Contenido de la pantalla principal'),
      ),
    );
  }
}
