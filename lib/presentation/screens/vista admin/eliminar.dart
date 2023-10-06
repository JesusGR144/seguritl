import 'package:flutter/material.dart';

class Eliminar extends StatelessWidget {
  const Eliminar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REGISTRO'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'Eliminar',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: 'Ingrese el ID',
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Image.asset(
                'assets/guardia1.png', // Reemplaza 'tu_imagen.png' con la ruta de tu imagen
                height: 150, // Ajusta el tamaño de la imagen
                width: 150, // Ajusta el tamaño de la imagen
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: 150, // Ancho personalizado para el botón
                child: ElevatedButton(
                  onPressed: () {
                    // Lógica para eliminar
                  },
                  child: const Text('Eliminar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
