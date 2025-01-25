import 'package:flutter/material.dart';

class BiologyPage extends StatelessWidget {
  final List<Map<String, String>> quizData = [
    {
      'question': 'Quel est lorgane de puissance de la cellule?',
      'answer': 'Mitochondries',
    },
    {
      'question': 'Quel est le processus par lequel les plantes fabriquent leur propre nourriture?',
      'answer': 'Photosynthèse',
    },

    {
      'question': 'Quel est le plus grand organe du corps humain?',
      'answer': 'Peau',
    },
    {
      'question': 'Quel type de cellules sont les globules rouges?',
      'answer': 'Érythrocytes',
    },
// Add more questions and answers here
    {
      'question': 'Comment sappelle létude des fossiles?',
      'answer': 'Paléontologie',
    },
    {
      'question': 'Quel gaz est essentiel pour la respiration?',
      'answer': 'Oxygène',
    },
// Add more questions and answers here
    {
      'question': 'Quel est le processus par lequel les organismes produisent une progéniture?',
      'answer': 'Reproduction',
    },
    {
      'question': 'Quelle est la fonction principale du système circulatoire?',
      'answer': 'Transport des nutriments et de loxygène',
    },

    {
      'question': 'Quels sont les éléments constitutifs des protéines?',
      'answer': 'Acides aminés',
    },
    {
      'question': 'Quelle est la fonction du noyau dans une cellule?',
      'answer': 'Centre de contrôle; contient de l ADN',
    },

    {
      'question': 'Quel est le processus de conversion de la nourriture en énergie?',
      'answer': 'Respiration cellulaire',
    },
    {
      'question': 'Quels sont les organes principaux du système respiratoire?',
      'answer': 'Poumons',
    },

    {
      'question': 'Quelle est létude scientifique du comportement animal?',
      'answer': 'Éthologie',
    },
    {
      'question': 'Quels sont les deux principaux types de cellules?',
      'answer': 'Cellules procaryotes et cellules eucaryotes',
    },

    {
      'question': 'Comment sappelle le processus par lequel les plantes perdent de l eau?',
      'answer': 'Transpiration',
    },
    {
      'question': 'Quelle est la fonction de la chlorophylle chez les plantes?',
      'answer': 'Elle aide les plantes à absorber l énergie lumineuse pour la photosynthèse.',
    },
    {
      'question': 'Comment s appelle le pigment responsable de la couleur verte des plantes?',
      'answer': 'Chlorophylle.',
    },
    {
      'question': 'Quelle est la fonction des ribosomes dans une cellule?',
      'answer': 'Ils sont responsables de la synthèse des protéines.',
    },
    {
      'question': 'Quel est le processus par lequel les cellules décomposent le glucose pour libérer de l énergie?',
      'answer': 'Respiration cellulaire.',
    },
    {
      'question': 'Quel est le rôle de lA DN dans une cellule?',
      'answer': 'Il contient des informations génétiques et des instructions pour les fonctions cellulaires.',
    },
    {
      'question': 'Quel est le but de la mitose?',
      'answer': 'Il s agit du processus de division cellulaire pour la croissance, la réparation et la reproduction asexuée.',
    },
    {
      'question': 'Quelle est la fonction de la membrane cellulaire?',
      'answer': 'Elle contrôle le mouvement des substances à l intérieur et à l extérieur de la cellule.',
    },
    {
      'question': 'Quelle est la structure qui stocke le matériel génétique dans une cellule eucaryote?',
      'answer': 'Le noyau.',
    },
    {
      'question': 'Quel est le processus par lequel une cellule englobe une particule pour l apporter dans la cellule?',
      'answer': 'Endocytose.',
    },
    {
      'question': 'Quels sont les minuscules structures dans une cellule où se produit la synthèse des protéines?',
      'answer': 'Ribosomes.',
    },
    {
      'question': 'Quelle est la fonction principale du cytoplasme dans une cellule?',
      'answer': 'C est la substance gélatineuse qui maintient les organites en place et facilite les processus cellulaires.',
    },
    {
      'question': 'Comment s appelle le processus par lequel les plantes répondent à la lumière?',
      'answer': 'Phototropisme.',
    },
    {
      'question': 'Quelle est la fonction de l appareil de Golgi?',
      'answer': 'Il modifie, trie et emballe les protéines pour la sécrétion ou le transport.',
    },
    {
      'question': 'Comment s appelle le processus par lequel les cellules se spécialisent dans des fonctions spécifiques?',
      'answer': 'Différenciation.',
    },

    {
      'question': 'Quelle est la fonction principale du système digestif?',
      'answer': 'Décomposer les aliments et absorber les nutriments',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biologie'),
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
                  'Question ${index + 1}: ${quizData[index]['question']}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 8),
                Text(
                  'Réponse: ${quizData[index]['answer']}',
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
