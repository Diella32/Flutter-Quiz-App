// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors

// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_final_fields, prefer_const_constructors, duplicate_ignore

import 'dart:math';
import 'package:flutter/material.dart';

class PageQuizBiologie extends StatefulWidget {
  @override
  _EtatPageQuizBiologie createState() => _EtatPageQuizBiologie();
}

class _EtatPageQuizBiologie extends State<PageQuizBiologie> {
  final List<Map<String, String>> donneesQuiz = [
    {
      'question': 'Quel est la centrale énergétique de la cellule ?',
      'answer': 'Mitochondrie',
    },
    {
      'question': 'Quel est le processus par lequel les plantes fabriquent leur propre aliment ?',
      'answer': 'Photosynthèse',
    },
    {
      'question': 'Quel est le plus grand organe du corps humain ?',
      'answer': 'Peau',
    },
    {
      'question': 'Quel type de cellules sont les globules rouges ?',
      'answer': 'Érythrocytes',
    },
    {
      'question': 'Comment s appelle l étude des fossiles ?',
      'answer': 'Paléontologie',
    },
    {
      'question': 'Quel gaz est essentiel à la respiration ?',
      'answer': 'Oxygène',
    },
    // Ajoutez plus de questions et réponses ici
    {
      'question': 'Quel est le processus par lequel les organismes produisent des descendants ?',
      'answer': 'Reproduction',
    },
    {
      'question': 'Quelle est la fonction principale du système circulatoire ?',
      'answer': 'Transport des nutriments et de l\'oxygène',
    },
    {
      'question': 'Quels sont les éléments constitutifs des protéines ?',
      'answer': 'Acides aminés',
    },
    {
      'question': 'Quelle est la fonction du noyau dans une cellule ?',
      'answer': 'Centre de contrôle ; contient l\'ADN',
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
        title: Text('Quiz de Biologie'),
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
