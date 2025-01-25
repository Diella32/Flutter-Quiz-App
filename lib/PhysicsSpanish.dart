import 'package:flutter/material.dart';

class PhysicsPageSpanish extends StatelessWidget {
  final List<Map<String, String>> quizData = [
    {
      'question': '¿Cuál es la unidad SI de fuerza?',
      'answer': 'Newton',
    },
    {
      'question': '¿Cuál es la aceleración debida a la gravedad en la Tierra?',
      'answer': '9.8 m/s²',
    },
    // Add more translated questions and answers here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Física'),
        backgroundColor: Color.fromARGB(255, 44, 218, 24),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: quizData.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pregunta ${index + 1}: ${quizData[index]['question']}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 8),
                Text(
                  'Respuesta: ${quizData[index]['answer']}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
              ],
            );
          },
        ),
      ),
    );
  }
}
