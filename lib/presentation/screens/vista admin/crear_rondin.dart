import 'package:flutter/material.dart';

class CrearRondin extends StatefulWidget {
  const CrearRondin({super.key});

  @override
  _CrearRondinState createState() => _CrearRondinState();
}

class _CrearRondinState extends State<CrearRondin> {
  TimeOfDay? horaInicio;
  TimeOfDay? horaTermino;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ALTA RONDIN'), // Cambio de texto en el AppBar
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropdownButtonFormField<String>(
                items: ["Turno de día", "Turno de noche"].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  // Manejar la selección del turno aquí
                },
                decoration: InputDecoration(
                  labelText: 'Turno',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Hora de inicio: ${horaInicio?.format(context) ?? ""}'),
                  ElevatedButton(
                    onPressed: () {
                      _seleccionarHoraInicio(context);
                    },
                    child: Text('Seleccionar'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                      'Hora de término: ${horaTermino?.format(context) ?? ""}'),
                  ElevatedButton(
                    onPressed: () {
                      _seleccionarHoraTermino(context);
                    },
                    child: Text('Seleccionar'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Acción para crear el rondín
                    // Puedes implementar esta acción aquí
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  child: const Text('Crear Rondín'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _seleccionarHoraInicio(BuildContext context) async {
    final timePicker = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (timePicker != null) {
      setState(() {
        horaInicio = timePicker;
      });
    }
  }

  Future<void> _seleccionarHoraTermino(BuildContext context) async {
    final timePicker = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (timePicker != null) {
      setState(() {
        horaTermino = timePicker;
      });
    }
  }
}

extension TimeOfDayExtension on TimeOfDay {
  String format(BuildContext context) {
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);
    final String formattedTime =
        localizations.formatTimeOfDay(this, alwaysUse24HourFormat: true);
    return formattedTime;
  }
}
