import 'package:flutter/material.dart';
import 'info_qr.dart';

class GenerarQR extends StatefulWidget {
  const GenerarQR({super.key});

  @override
  _GenerarQRState createState() => _GenerarQRState();
}

class _GenerarQRState extends State<GenerarQR> {
  final TextEditingController _aliasController = TextEditingController();
  final TextEditingController _asuntoController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime selectedDate = DateTime.now();

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      setState(() {
        _dateController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GENERAR QR'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16.0),
              TextField(
                controller: _aliasController, // Agregado
                decoration: InputDecoration(
                  hintText: 'Alias',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _asuntoController, // Agregado
                decoration: InputDecoration(
                  hintText: 'Asunto',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _dateController,
                      decoration: InputDecoration(
                        hintText: 'Expiración',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      _selectDate(context);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    child: const Text('Calendario'),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  const Text('Permanente'),
                ],
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  String alias = _aliasController.text;
                  String asunto = _asuntoController.text;
                  String expiracion = _dateController.text;

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => InfoQR(
                        alias: alias,
                        asunto: asunto,
                        expiracion: expiracion,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                ),
                child: const Text('Generar QR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
