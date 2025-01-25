import 'package:flutter/material.dart';

class ChemistryPage extends StatelessWidget {

  final List<Map<String, String>> quizData = [
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
    // Add more questions and answers here
    {
      'question': 'À quoi sert l\'échelle de pH ?',
      'answer': 'Mesurer l\'acidité ou l\'alcalinité d\'une substance',
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
    {
      'question': 'Comment s\'appelle le processus par lequel les plantes fabriquent leur propre nourriture ?',
      'answer': 'Photosynthèse',
    },
    {
      'question': 'Quel est le symbole chimique du carbone ?',
      'answer': 'C',
    },
    {
      'question': 'Quel est le processus de combinaison des éléments pour former de nouvelles substances ?',
      'answer': 'Réaction chimique',
    },
    {
      'question': 'Comment s\'appelle la substance qui accélère une réaction chimique sans être consommée ?',
      'answer': 'Catalyseur',
    },
    {
      'question': 'Quelle est la formule chimique du peroxyde d\'hydrogène ?',
      'answer': 'H2O2',
    },
    {
      'question': 'Comment s\'appelle la force qui maintient les atomes ensemble dans une molécule ?',
      'answer': 'Lien chimique',
    },
    {
      'question': 'Quel est le symbole chimique du fer ?',
      'answer': 'Fe',
    },
    {
      'question': 'Quel est le processus de retrait d\'électrons d\'un atome ou d\'une molécule ?',
      'answer': 'Ionisation',
    },
    {
      'question': 'Quelle est la formule chimique du méthane ?',
      'answer': 'CH4',
    },
    {
      'question': 'Comment s\'appelle le processus par lequel un liquide se transforme en gaz à son point d\'ébullition ?',
      'answer': 'Vaporisation',
    },
    {
      'question': 'Quel est le symbole chimique de l\'argent ?',
      'answer': 'Ag',
    },
    {
      'question': 'Quel est le composant principal du gaz naturel ?',
      'answer': 'Méthane',
    },
    {
      'question': 'Comment s\'appelle le lien formé par le partage d\'électrons entre les atomes ?',
      'answer': 'Lien covalent',
    },
    {
      'question': 'Quelle est la formule chimique du dioxyde de carbone ?',
      'answer': 'CO2',
    },
    {
      'question': 'Comment s\'appelle le processus par lequel un gaz se transforme en liquide ?',
      'answer': 'Condensation',
    },
    {
      'question': 'Quel est le symbole chimique du potassium ?',
      'answer': 'K',
    },
    {
      'question': 'Comment s\'appelle le processus par lequel un solide se transforme directement en gaz ?',
      'answer': 'Sublimation',
    },

    {
      'question': 'Quel est le symbole chimique du carbone ?',
      'answer': 'C',
    },
    {
      'question': 'Quel est le processus de combinaison des éléments pour former de nouvelles substances ?',
      'answer': 'Réaction chimique',
    },
    {
      'question': 'Comment s\'appelle la substance qui accélère une réaction chimique sans être consommée ?',
      'answer': 'Catalyseur',
    },
    {
      'question': 'Quelle est la formule chimique du peroxyde d\'hydrogène ?',
      'answer': 'H2O2',
    },
    {
      'question': 'Comment s\'appelle la force qui maintient les atomes ensemble dans une molécule ?',
      'answer': 'Lien chimique',
    },
    {
      'question': 'Quel est le symbole chimique du fer ?',
      'answer': 'Fe',
    },
    {
      'question': 'Quel est le processus de retrait d\'électrons d\'un atome ou d\'une molécule ?',
      'answer': 'Ionisation',
    },
    {
      'question': 'Quelle est la formule chimique du méthane ?',
      'answer': 'CH4',
    },
    {
      'question': 'Comment s\'appelle le processus par lequel un liquide se transforme en gaz à son point d\'ébullition ?',
      'answer': 'Vaporisation',
    },
    {
      'question': 'Quel est le symbole chimique de l\'argent ?',
      'answer': 'Ag',
    },
    {
      'question': 'Quel est le composant principal du gaz naturel ?',
      'answer': 'Méthane',
    },
    {
      'question': 'Comment s\'appelle le lien formé par le partage d\'électrons entre les atomes ?',
      'answer': 'Lien covalent',
    },
    {
      'question': 'Quelle est la formule chimique du dioxyde de carbone ?',
      'answer': 'CO2',
    },
    {
      'question': 'Comment s\'appelle le processus par lequel un gaz se transforme en liquide ?',
      'answer': 'Condensation',
    },
    {
      'question': 'Quel est le symbole chimique du potassium ?',
      'answer': 'K',
    },
    {
      'question': 'Comment s\'appelle le processus par lequel un solide se transforme directement en gaz ?',
      'answer': 'Sublimation',
    },
    {
      'question': 'Quelle est la formule chimique de l\'eau ?',
      'answer': 'H2O',
    },
    {
      'question': 'Comment s\'appelle le composé formé en combinant de l\'hydrogène et de l\'oxygène ?',
      'answer': 'Eau',
    },
    {
      'question': 'Quel est le symbole chimique du mercure ?',
      'answer': 'Hg',
    },

    {
      'question': 'Quelle est la formule chimique de l\'eau ?',
      'answer': 'H2O',
    },
    {
      'question': 'Comment s\'appelle le composé formé en combinant de l\'hydrogène et de l\'oxygène ?',
      'answer': 'Eau',
    },
    {
      'question': 'Quel est le symbole chimique du mercure ?',
      'answer': 'Hg',
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chimie'),
        backgroundColor: Color.fromARGB(255, 44, 218, 24),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            for (var i = 0; i < quizData.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Question ${i + 1}: ${quizData[i]['question']}',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Réponse: ${quizData[i]['answer']}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
