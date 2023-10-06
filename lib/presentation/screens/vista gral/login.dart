import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const Image(
          image: AssetImage('assets/logo.png'),
          fit: BoxFit.cover,
        ),
        title: null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage(
                  'assets/guardia.png'), // IMPORTANTE configurar asset
            ),
            const SizedBox(height: 20.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Usuario',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 20.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true, // Para ocultar la contraseña
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Lógica de inicio de sesión aquí
              },
              child: const Text('Iniciar Sesión'),
            ),
            const SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                // Agrega la lógica para recuperar la contraseña aquí
              },
              child: const Text('¿Olvidaste la contraseña? Click aquí'),
            ),
          ],
        ),
      ),
    );
  }
}
