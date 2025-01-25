import 'dart:math';
import 'package:flutter/material.dart';

class PageQuizChimie extends StatefulWidget {
  const PageQuizChimie({Key? key}) : super(key: key);

  @override
  _EtatPageQuizChimie createState() => _EtatPageQuizChimie();
}

class _EtatPageQuizChimie extends State<PageQuizChimie> {
  final List<Map<String, String>> donneesQuiz = [
    {
      'question': 'Quel est le symbole chimique de l\'eau ?',
      'answer': 'H2O',
    },
    {
      'question': 'Quel est le numéro atomique de l\'oxygène ?',
      'answer': '8',
    },
    {
      'question': 'Quelle est la formule de l\'acide sulfurique ?',
      'answer': 'H2SO4',
    },
    {
      'question': 'Quel est le symbole chimique du sodium ?',
      'answer': 'Na',
    },
    {
      'question': 'Quel est le gaz le plus abondant dans l\'atmosphère terrestre ?',
      'answer': 'Azote',
    },
    {
      'question': 'Que mesure l\'échelle de pH ?',
      'answer': 'Acidité ou alcalinité d\'une substance',
    },
    {
      'question': 'Quel est le symbole chimique de l\'or ?',
      'answer': 'Au',
    },
    {
      'question': 'Quelle est la formule chimique du sel de table ?',
      'answer': 'NaCl',
    },
    {
      'question': 'Quel est le processus de division des atomes appelé ?',
      'answer': 'Fission nucléaire',
    },
    {
      'question': 'Quel est le symbole chimique de l\'hélium ?',
      'answer': 'He',
    },
    // Ajouter plus de questions et réponses ici
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
        title: Text('Quiz de Chimie'),
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
                            _reponsesSelectionnees[index] = value as String?;
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
  List<String> genererOptionsAleatoires(String reponseCorrecte) {
    final List<String> toutesOptions = [];
    toutesOptions.add(reponseCorrecte);

    while (toutesOptions.length < 4) {
      final indexAleatoire = Random().nextInt(donneesQuiz.length);
      final option = donneesQuiz[indexAleatoire]['answer'];
      if (!toutesOptions.contains(option)) {
        toutesOptions.add(option!);
      }
    }

    toutesOptions.shuffle();
    return toutesOptions;
  }

  int calculerScore() {
    int score = 0;
    for (int i = 0; i < questionsSelectionnees.length; i++) {
      final question = questionsSelectionnees[i];
      final reponseCorrecte = question['answer'];
      final reponseSelectionnee = _reponsesSelectionnees[i];
      if (reponseSelectionnee == reponseCorrecte) {
        score++;
      }
    }
    return score;
  }
}
