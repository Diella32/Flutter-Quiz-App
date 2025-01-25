import 'dart:math';
import 'package:flutter/material.dart';

class PageQuizPhysique extends StatefulWidget {
  const PageQuizPhysique({Key? key}) : super(key: key);

  @override
  _EtatPageQuizPhysique createState() => _EtatPageQuizPhysique();
}

class _EtatPageQuizPhysique extends State<PageQuizPhysique> {
  final List<Map<String, String>> donneesQuiz = [
    {
      'question': 'Quelle est l\'unité SI de la force ?',
      'answer': 'Newton',
    },
    {
      'question': 'Quelle est l\'accélération due à la gravité sur Terre ?',
      'answer': '9,8 m/s²',
    },

    {
      'question': 'Quelle est l\'unité de la résistance électrique ?',
      'answer': 'Ohm',
    },
    {
      'question': 'Que dit la loi d\'inertie ?',
      'answer':
      'Un objet au repos reste au repos et un objet en mouvement reste en mouvement tant qu\'une force extérieure ne s\'applique pas',
    },

    {
      'question': 'Quelle est l\'unité SI du courant électrique ?',
      'answer': 'Ampère',
    },
    {
      'question': 'Quelle est la formule de l\'énergie cinétique ?',
      'answer': '1/2 * masse * vitesse^2',
    },

    {
      'question': 'Quelle est l\'unité SI de la puissance ?',
      'answer': 'Watt',
    },
    {
      'question': 'Quel est le principe de conservation de l\'énergie ?',
      'answer': 'L\'énergie ne peut ni être créée ni détruite, seulement transformée d\'une forme à une autre',
    },

    {
      'question': 'Quelle est la formule de la force gravitationnelle ?',
      'answer': 'G * (m1 * m2) / r^2',
    },
    {
      'question': 'Quelle est l\'unité SI de la pression ?',
      'answer': 'Pascal',
    },
  ];

  List<Map<String, String>> questionsSelectionnees = [];

  @override
  void initState() {
    super.initState();
    selectionnerQuestionsAleatoires();
  }

  void selectionnerQuestionsAleatoires() {
    final random = Random();
    final Set<int> indexesSelectionnes = {};

    while (indexesSelectionnes.length < 10) {
      final index = random.nextInt(donneesQuiz.length);
      indexesSelectionnes.add(index);
    }

    questionsSelectionnees = indexesSelectionnes
        .map((index) => donneesQuiz[index])
        .toList(growable: false);
  }

  Map<int, String?> _reponsesSelectionnees = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz de Physique'),
        backgroundColor: Color.fromARGB(255, 44, 218, 24),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: questionsSelectionnees.length,
          itemBuilder: (context, index) {
            final question = questionsSelectionnees[index];
            final List<String> options =
            genererOptionsAleatoires(question['answer']!);
            final isAnswerSelected = _reponsesSelectionnees.containsKey(index);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Question ${index + 1}: ${question['question']}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 8),
                Column(
                  children: options.map((option) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: RadioListTile(
                        title: Text(option),
                        groupValue: _reponsesSelectionnees[index],
                        value: option,
                        onChanged: isAnswerSelected
                            ? null
                            : (value) {
                          setState(() {
                            _reponsesSelectionnees[index] =
                            value as String?;
                          });
                        },
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 8),
                if (isAnswerSelected)
                  _reponsesSelectionnees[index] == question['answer']
                      ? Icon(Icons.check, color: Colors.green)
                      : Icon(Icons.close, color: Colors.red),
                SizedBox(height: 16),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final score = calculerScore();
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Résultat du Quiz'),
                content: Text(score >= 7
                    ? 'Félicitations ! Vous avez réussi le quiz avec un score de $score.'
                    : 'Oops ! Vous n\'avez pas réussi le quiz. Votre score est de $score.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.check),
      ),
    );
  }

  int calculerScore() {
    int score = 0;
    for (int i = 0; i < questionsSelectionnees.length; i++) {
      final question = questionsSelectionnees[i];
      final bonneReponse = question['answer'];
      final reponseSelectionnee = _reponsesSelectionnees[i];
      if (reponseSelectionnee == bonneReponse) {
        score++;
      }
    }
    return score;
  }

  List<String> genererOptionsAleatoires(String bonneReponse) {
    final List<String> toutesOptions = [];
    toutesOptions.add(bonneReponse);

    while (toutesOptions.length < 4) {
      final indiceAleatoire = Random().nextInt(donneesQuiz.length);
      final option = donneesQuiz[indiceAleatoire]['answer'];
      if (!toutesOptions.contains(option)) {
        toutesOptions.add(option!);
      }
    }

    toutesOptions.shuffle();
    return toutesOptions;
  }
}
