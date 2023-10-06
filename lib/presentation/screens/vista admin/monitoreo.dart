import 'package:flutter/material.dart';

class Monitoreo extends StatelessWidget {
  const Monitoreo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REGISTRO'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/menu.png',
            width: 30.0,
            height: 30.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/guardia.png',
              width: 30.0,
              height: 30.0,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20.0),
            const Text(
              'Monitoreo',
              style: TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 60.0),
            Container(
              constraints: const BoxConstraints(
                  maxWidth: 200.0), // Establece el ancho máximo del botón
              child: ElevatedButton(
                onPressed: () {
                  // Lógica para crear expediente aquí
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  primary:
                      const Color(0xFF4040FB), // Color en hexadecimal #4040FB
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/guardia.png',
                        width: 30.0,
                        height: 30.0,
                      ),
                      const SizedBox(width: 20.0),
                      const Expanded(
                        child: Text(
                          'Crear',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              constraints: const BoxConstraints(
                  maxWidth: 200.0), // Establece el ancho máximo del botón
              child: ElevatedButton(
                onPressed: () {
                  // Lógica para actualizar expediente aquí
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  primary:
                      const Color(0xFF4040FB), // Color en hexadecimal #4040FB
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/guardia.png',
                        width: 30.0,
                        height: 30.0,
                      ),
                      const SizedBox(width: 20.0),
                      const Expanded(
                        child: Text(
                          'Actualizar',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              constraints: const BoxConstraints(
                  maxWidth: 200.0), // Establece el ancho máximo del botón
              child: ElevatedButton(
                onPressed: () {
                  // Lógica para eliminar expediente aquí
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  primary:
                      const Color(0xFF4040FB), // Color en hexadecimal #4040FB
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/guardia.png',
                        width: 30.0,
                        height: 30.0,
                      ),
                      const SizedBox(width: 20.0),
                      const Expanded(
                        child: Text(
                          'Eliminar',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              constraints: const BoxConstraints(
                  maxWidth: 200.0), // Establece el ancho máximo del botón
              child: ElevatedButton(
                onPressed: () {
                  // Lógica para ir a la página principal (Home) aquí
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  primary:
                      const Color(0xFF4040FB), // Color en hexadecimal #4040FB
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/guardia.png',
                        width: 30.0,
                        height: 30.0,
                      ),
                      const SizedBox(width: 20.0),
                      const Expanded(
                        child: Text(
                          'Home',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
