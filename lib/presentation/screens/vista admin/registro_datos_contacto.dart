import 'package:flutter/material.dart';

class RegistroDatosContacto extends StatefulWidget {
  final Function(bool completos) onChanged;

  const RegistroDatosContacto({Key? key, required this.onChanged})
      : super(key: key);

  @override
  _RegistroDatosContactoState createState() => _RegistroDatosContactoState();
}

class _RegistroDatosContactoState extends State<RegistroDatosContacto> {
  final TextEditingController _correoController = TextEditingController();
  final TextEditingController _telefono1Controller = TextEditingController();
  final TextEditingController _telefono2Controller = TextEditingController();

  bool _datosContactoCompletos = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Datos de Contacto',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Image.asset(
              'assets/guardia.png',
              height: 150,
              width: 150,
            ),
            const SizedBox(height: 20.0),
            RoundedTextField(
              'Ingresa el correo',
              controller: _correoController,
              onChanged: (text) {
                checkDatosCompletos();
              },
            ),
            const SizedBox(height: 20.0),
            RoundedTextField(
              'Num. Tel. 1',
              controller: _telefono1Controller,
              onChanged: (text) {
                checkDatosCompletos();
              },
            ),
            const SizedBox(height: 20.0),
            RoundedTextField(
              'Num. Tel. 2',
              controller: _telefono2Controller,
              onChanged: (text) {
                checkDatosCompletos();
              },
            ),
            const SizedBox(height: 20.0),
            if (_datosContactoCompletos)
              ElevatedButton(
                onPressed: _registrar,
                child: const Text('Registrar'),
              ),
          ],
        ),
      ),
    );
  }

  void checkDatosCompletos() {
    final correo = _correoController.text.isNotEmpty;
    final telefono1 = _telefono1Controller.text.isNotEmpty;
    final telefono2 = _telefono2Controller.text.isNotEmpty;
    final completos = correo && telefono1 && telefono2;
    setState(() {
      _datosContactoCompletos = completos;
    });
    widget.onChanged(completos);
  }

  void _registrar() {
    // Lógica para registrar
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Registro exitoso'),
          content: const Text('Los datos se han registrado exitosamente.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}

class RoundedTextField extends StatelessWidget {
  final String placeholder;
  final TextEditingController? controller;
  final Function(String text) onChanged;

  const RoundedTextField(
    this.placeholder, {
    Key? key,
    this.controller,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          hintText: placeholder,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
