import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Estadisticas extends StatefulWidget {
  const Estadisticas({super.key});

  @override
  _EstadisticasState createState() => _EstadisticasState();
}

class _EstadisticasState extends State<Estadisticas> {
  String? usuarioSeleccionado;
  String? rondinSeleccionado;

  // Lista ficticia de usuarios y rondines
  final List<String> usuarios = ["Usuario1", "Usuario2", "Usuario3"];
  final List<String> rondines = ["Rondin1", "Rondin2", "Rondin3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ESTADISTICAS'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropdownButtonFormField<String>(
                value: usuarioSeleccionado,
                items: usuarios.map((String usuario) {
                  return DropdownMenuItem<String>(
                    value: usuario,
                    child: Text(usuario),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    usuarioSeleccionado = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Seleccionar Usuario',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField<String>(
                value: rondinSeleccionado,
                items: rondines.map((String rondin) {
                  return DropdownMenuItem<String>(
                    value: rondin,
                    child: Text(rondin),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    rondinSeleccionado = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Seleccionar Rondin',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Gráfica ficticia (utiliza fl_chart)
              AspectRatio(
                aspectRatio: 1.7,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(show: false),
                    borderData: FlBorderData(
                      show: true,
                      border: Border.all(
                        color: const Color(0xff37434d),
                        width: 1,
                      ),
                    ),
                    minX: 0,
                    maxX: 6,
                    minY: 0,
                    maxY: 6,
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          const FlSpot(0, 3),
                          const FlSpot(1, 1),
                          const FlSpot(2, 4),
                          const FlSpot(3, 2),
                          const FlSpot(4, 5),
                          const FlSpot(5, 1),
                        ],
                        isCurved: true,
                        colors: const [
                          Color(0xff27b6fc),
                        ],
                        dotData: FlDotData(show: false),
                        belowBarData: BarAreaData(show: false),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
