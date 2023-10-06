import 'package:flutter/material.dart';
import 'package:seguritl/presentation/screens/vista%20admin/actualizar_rondin.dart';
import 'package:seguritl/presentation/screens/vista%20admin/asignar_rondin.dart';
import 'package:seguritl/presentation/screens/vista%20admin/crear_rondin.dart';

class Rondines extends StatelessWidget {
  const Rondines({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color(0xFF1b396a),
        title: const Text('RONDINES'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Navegar a la pantalla de creación de rondin
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const CrearRondin(), // Reemplaza con la pantalla de creación
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: const Text('Crear'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Navegar a la pantalla de actualización
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const ActualizarRondin(), // Reemplaza con la pantalla de actualización
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: const Text('Actualizar'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Navegar a la pantalla de asignación de rondin (por implementar)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const AsignarRondin(), // Reemplaza con la pantalla de actualización
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: const Text('Asignar Rondin'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Regresar a la pantalla anterior
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: const Text('Regresar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
