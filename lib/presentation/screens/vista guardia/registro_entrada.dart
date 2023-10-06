import 'package:flutter/material.dart';

class RegistroEntrada extends StatelessWidget {
  const RegistroEntrada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'HOLA @USUARIO',
              style: TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 40.0),
            Image.asset(
              'assets/calendario.png', // Reemplaza 'calendario.png' con la ruta de tu imagen del calendario
              width: 200.0,
              height: 200.0,
            ),
            const SizedBox(height: 40.0),
            const Text(
              'dd:mm:yy', // Agrega la fecha en el formato deseado
              style: TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para registrar entrada aquí
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                primary:
                    const Color(0xFF4040FB), // Color en hexadecimal #4040FB
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Registrar Entrada',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
