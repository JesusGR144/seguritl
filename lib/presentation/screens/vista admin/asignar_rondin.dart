import 'package:flutter/material.dart';

class AsignarRondin extends StatelessWidget {
  const AsignarRondin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asignar Rondin'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'ID del usuario',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                // Agrega lógica para manejar la entrada del ID
              ),
              const SizedBox(height: 20),
              // Agrega el DropdownButtonFormField para seleccionar ID disponibles
              DropdownButtonFormField<String>(
                items:
                    ["ID1", "ID2", "ID3"] // Reemplaza con los IDs disponibles
                        .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  // Maneja la selección del ID disponible aquí
                },
                decoration: InputDecoration(
                  labelText: 'Seleccionar ID',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para asignar el rondín
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  child: const Text('Asignar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
