import 'package:flutter/material.dart';
import 'bioQuizSpanish.dart';
import 'physicsQuizSpanish.dart';
import 'chemQuizSpanish.dart';

class PaginaQuizzes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuestionarios', textAlign: TextAlign.center),
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
              hint: Text('Seleccione el cuestionario'),
              onChanged: (String? value) {
                if (value != null) {
                  switch (value) {
                    case 'Biología':
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaginaCuestionarioBiologia(),
                        ),
                      );
                      break;
                    case 'Física':
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaginaQuizFisica(),
                        ),
                      );
                      break;
                    case 'Química':
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaginaQuizQuimica(),
                        ),
                      );
                      break;
                  }
                }
              },
              items: <String>['Biología', 'Física', 'Química']
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value + ' Cuestionario'),
                ),
              )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PaginaQuizzes(),
  ));
}
