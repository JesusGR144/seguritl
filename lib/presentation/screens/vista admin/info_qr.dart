import 'package:flutter/material.dart';

class InfoQR extends StatelessWidget {
  final String alias;
  final String asunto;
  final String expiracion;

  const InfoQR({
    Key? key,
    required this.alias,
    required this.asunto,
    required this.expiracion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info QR'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Alias:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30, // Tamaño de fuente opcional
                ),
              ),
              Text(' $alias'),
              const SizedBox(height: 20.0),
              const Text(
                'Asunto:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30, // Tamaño de fuente opcional
                ),
              ),
              Text(' $asunto'),
              const SizedBox(height: 20.0),
              const Text(
                'Expiración:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30, // Tamaño de fuente opcional
                ),
              ),
              Text(' $expiracion'),
              const SizedBox(height: 20.0),
              // Aquí puedes mostrar el QR generado utilizando una imagen.
              // Por ejemplo:
              // Image.asset('ruta_de_la_imagen_del_qr.png'),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Agregar aquí la lógica para guardar el QR.
                },
                child: const Text('Guardar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
