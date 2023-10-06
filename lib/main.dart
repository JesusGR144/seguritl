import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seguritl/presentation/providers/chat_provider.dart';
import 'package:seguritl/presentation/screens/Chat.dart';
import 'package:seguritl/presentation/screens/vista gral/home.dart';
import 'package:seguritl/presentation/screens/vista gral/login.dart';
import 'package:seguritl/presentation/screens/rondines.dart';
import 'package:seguritl/config/tema/tema_app.dart';
import 'package:seguritl/presentation/screens/vista%20admin/eliminar.dart';
import 'package:seguritl/presentation/screens/vista%20admin/estadisticas.dart';
import 'package:seguritl/presentation/screens/vista%20admin/expediente.dart';
import 'package:seguritl/presentation/screens/vista%20admin/generar_qr.dart';
import 'package:seguritl/presentation/screens/vista%20admin/info.dart';
import 'package:seguritl/presentation/screens/vista%20admin/registro_completo.dart';
import 'package:seguritl/presentation/screens/vista%20guardia/registro_entrada.dart';
import 'package:seguritl/presentation/screens/vista%20guardia/registro_salida.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/', // Ruta inicial
          theme: AppTheme
              .mainTheme(), // Utiliza el tema principal configurado en AppTheme
          routes: {
            '/': (context) => const Home(), // Pantalla principal (Home)
            '/login': (context) => const LoginScreen(),
            '/chat': (context) => const Chat(), // Pantalla de Expediente
            '/info': (context) => const Info(), // Pantalla de Información
            '/registro_entrada': (context) =>
                const RegistroEntrada(), // Pantalla de Registro de Entrada
            '/registro_salida': (context) =>
                const RegistroSalida(), // Pantalla de Registro de Salida
            '/expediente': (context) =>
                const Expediente(), // Pantalla de Inicio de Sesión
            '/registro_completo': (context) => const RegistroCompleto(),
            '/eliminar': (context) => const Eliminar(),
            '/generar_qr': (context) => const GenerarQR(),
            '/rondines': (context) => const Rondines(),
            '/estadisticas': (context) =>
                const Estadisticas() // Pantalla de Registro de Datos Personales
          },
        ));
  }
}
