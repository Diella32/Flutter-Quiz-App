import 'package:flutter/material.dart';

class BiologyPageSpanish extends StatelessWidget {
  final List<Map<String, String>> quizData = [
    {
      'question': '¿Cuál es la central eléctrica de la célula?',
      'answer': 'Mitochondria',
    },
    {
      'question': '¿Cuál es el proceso mediante el cual las plantas producen su propia comida?',
      'answer': 'Fotosíntesis',
    },

    {
      'question': '¿Cuál es el órgano más grande del cuerpo humano?',
      'answer': 'Piel',
    },
    {
      'question': '¿Qué tipo de células son los glóbulos rojos?',
      'answer': 'Eritrocitos',
    },
    // Add more questions and answers here
    {
      'question': '¿Cómo se llama el estudio de los fósiles?',
      'answer': 'Paleontología',
    },
    {
      'question': '¿Qué gas es esencial para la respiración?',
      'answer': 'Oxígeno',
    },
    // Add more questions and answers here
    {
      'question': '¿Cuál es el proceso mediante el cual los organismos producen descendencia?',
      'answer': 'Reproducción',
    },
    {
      'question': '¿Cuál es la función principal del sistema circulatorio?',
      'answer': 'Transporte de nutrientes y oxígeno',
    },

    {
      'question': '¿Cuáles son los bloques de construcción de las proteínas?',
      'answer': 'Aminoácidos',
    },
    {
      'question': '¿Cuál es la función del núcleo en una célula?',
      'answer': 'Centro de control; contiene ADN',
    },

    {
      'question': '¿Cuál es el proceso de conversión de los alimentos en energía?',
      'answer': 'Respiración celular',
    },
    {
      'question': '¿Cuáles son los órganos principales del sistema respiratorio?',
      'answer': 'Pulmones',
    },

    {
      'question': '¿Cuál es el estudio científico del comportamiento animal?',
      'answer': 'Etología',
    },
    {
      'question': '¿Cuáles son los dos tipos principales de células?',
      'answer': 'Células procariotas y células eucariotas',
    },

    {
      'question': '¿Cómo se llama el proceso mediante el cual las plantas pierden agua?',
      'answer': 'Transpiración',
    },
    {
      'question': '¿Cuál es la función de la clorofila en las plantas?',
      'answer': 'Ayuda a las plantas a absorber la energía luminosa para la fotosíntesis.',
    },
    {
      'question': '¿Cómo se llama el pigmento responsable del color verde de las plantas?',
      'answer': 'Clorofila.',
    },
    {
      'question': '¿Cuál es la función de los ribosomas en una célula?',
      'answer': 'Son responsables de la síntesis de proteínas.',
    },
    {
      'question': '¿Cuál es el proceso mediante el cual las células descomponen la glucosa para liberar energía?',
      'answer': 'Respiración celular.',
    },
    {
      'question': '¿Cuál es el papel del ADN en una célula?',
      'answer': 'Contiene información genética e instrucciones para las funciones celulares.',
    },
    {
      'question': '¿Cuál es el propósito de la mitosis?',
      'answer': 'Es el proceso de división celular para el crecimiento, la reparación y la reproducción asexual.',
    },
    {
      'question': '¿Cuál es la función de la membrana celular?',
      'answer': 'Controla el movimiento de sustancias dentro y fuera de la célula.',
    },
    {
      'question': '¿Cuál es la estructura que almacena material genético en una célula eucariota?',
      'answer': 'El núcleo.',
    },
    {
      'question': '¿Cuál es el proceso mediante el cual una célula engloba una partícula para llevarla dentro de la célula?',
      'answer': 'Endocitosis.',
    },
    {
      'question': '¿Cuáles son las diminutas estructuras en una célula donde ocurre la síntesis de proteínas?',
      'answer': 'Ribosomas.',
    },
    {
      'question': '¿Cuál es la función principal del citoplasma en una célula?',
      'answer': 'Es la sustancia gelatinosa que mantiene los orgánulos en su lugar y facilita los procesos celulares.',
    },
    {
      'question': '¿Cómo se llama el proceso mediante el cual las plantas responden a la luz?',
      'answer': 'Fototropismo.',
    },
    {
      'question': '¿Cuál es la función del aparato de Golgi?',
      'answer': 'Modifica, ordena y empaqueta proteínas para la secreción o el transporte.',
    },
    {
      'question': '¿Cómo se llama el proceso mediante el cual las células se especializan en funciones específicas?',
      'answer': 'Diferenciación.',
    },

    {
      'question': '¿Cuál es la función principal del sistema digestivo?',
      'answer': 'Descomponer los alimentos y absorber los nutrientes',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biología'),
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
              hint: Text('Materias'),
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
                  // Add cases for other subjects
                  }
                }
              },
              items: <String>['Biología'] // Add other subjects here
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

void main() {
  runApp(MaterialApp(
    // debugShowCheckedModeBanner: false,
    home: SpanishHomePage(),
  ));
}
