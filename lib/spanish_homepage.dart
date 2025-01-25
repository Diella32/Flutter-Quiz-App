import 'package:flutter/material.dart';
import 'BiologyPageSpanish.dart';
import 'PhysicsSpanish.dart';
import 'chemistrySpanish.dart';
import 'QuizzesSpanish.dart'; // Importar QuizzesPage

class SpanishHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicación de Estudio - Español', textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 44, 218, 24),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              hint: Text('Asignaturas'),
              onChanged: (String? value) {
                if (value != null) {
                  switch (value) {
                    case 'Biología':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BiologyPageSpanish(),
                        ),
                      );
                      break;
                    case 'Física':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PhysicsPageSpanish(),
                        ),
                      );
                      break;
                    case 'Química':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChemistryPageSpanish(), // Navegar a PaginaQuimica
                        ),
                      );
                      break;
                    case 'Cuestionarios': // Navegar a PaginaCuestionarios
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaginaQuizzes(),
                        ),
                      );
                      break;
                  }
                }
              },
              items: <String>['Biología', 'Física', 'Química', 'Cuestionarios'] // Agregar 'Cuestionarios' como opción
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class PantallaAsignatura extends StatelessWidget {
  final String asignatura;

  PantallaAsignatura({required this.asignatura});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(asignatura),
      ),
      body: Center(
        child: Text(
          '¡Bienvenido a la pantalla de $asignatura!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
