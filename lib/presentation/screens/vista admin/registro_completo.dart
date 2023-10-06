import 'package:flutter/material.dart';
import 'registro_datos_personales.dart';
import 'registro_datos_contacto.dart';

class RegistroCompleto extends StatefulWidget {
  const RegistroCompleto({super.key});

  @override
  _RegistroCompletoState createState() => _RegistroCompletoState();
}

class _RegistroCompletoState extends State<RegistroCompleto> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool _datosPersonalesCompletos = false;
  bool _datosContactoCompletos = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REGISTRO'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                RegistroDatosPersonales(
                  onChanged: (completos) {
                    setState(() {
                      _datosPersonalesCompletos = completos;
                    });
                    checkDatosCompletos();
                  },
                ),
                RegistroDatosContacto(
                  onChanged: (completos) {
                    setState(() {
                      _datosContactoCompletos = completos;
                    });
                    checkDatosCompletos();
                  },
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_currentPage > 0)
                IconButton(
                  onPressed: () {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              const SizedBox(width: 16.0),
              if (_currentPage < 1)
                IconButton(
                  onPressed: () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  icon: const Icon(Icons.arrow_forward),
                ),
            ],
          ),
          // if (_currentPage == 1)
          //   ElevatedButton(
          //     onPressed: _datosPersonalesCompletos && _datosContactoCompletos
          //         ? _registrar
          //         : null,
          //     child: const Text('Registrar Datos'),
          //   ),
        ],
      ),
    );
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

  void checkDatosCompletos() {
    final completos = _datosPersonalesCompletos && _datosContactoCompletos;
    setState(() {
      if (_currentPage == 0) {
        _datosPersonalesCompletos = completos;
      } else {
        _datosContactoCompletos = completos;
      }
    });
  }
}
