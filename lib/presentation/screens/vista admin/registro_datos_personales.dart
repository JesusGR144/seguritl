import 'package:flutter/material.dart';

class RegistroDatosPersonales extends StatefulWidget {
  final Function(bool completos) onChanged;

  const RegistroDatosPersonales({Key? key, required this.onChanged})
      : super(key: key);

  @override
  _RegistroDatosPersonalesState createState() =>
      _RegistroDatosPersonalesState();
}

class _RegistroDatosPersonalesState extends State<RegistroDatosPersonales> {
  DateTime? selectedDate;
  final TextEditingController _nombreController = TextEditingController();

  bool _datosPersonalesCompletos = false;
  bool _genderSelected = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Center(
              child: Text(
                'Datos Personales',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para seleccionar archivo
              },
              child: const Text('Seleccionar archivo'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para tomar foto
              },
              child: const Text('Tomar foto'),
            ),
            const SizedBox(height: 20.0),
            const Center(
              child: Text(
                'No de ID',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: TextField(
                controller: _nombreController,
                onChanged: (text) {
                  checkDatosPersonales();
                },
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  hintText: 'Ingresa el nombre',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextButton(
              onPressed: () => _selectDate(context),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        selectedDate != null
                            ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                            : 'Fecha de nacimiento',
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const Icon(Icons.calendar_today, color: Colors.grey),
                    ],
                  ),
                ),
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
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  hintText: 'Selecciona tu género',
                  border: InputBorder.none,
                ),
                value: _genderSelected ? 'Femenino' : null,
                onChanged: (newValue) {
                  setState(() {
                    _genderSelected = newValue == 'Femenino';
                  });
                  checkDatosPersonales();
                },
                items: <String>['Femenino', 'Masculino'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    ))!;

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      checkDatosPersonales();
    }
  }

  void checkDatosPersonales() {
    final completos = _nombreController.text.isNotEmpty &&
        selectedDate != null &&
        _genderSelected;
    widget.onChanged(completos);
    _datosPersonalesCompletos = completos;
  }
}
