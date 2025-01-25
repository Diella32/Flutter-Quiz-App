import 'package:flutter/material.dart';
import 'frenchBio.dart';
import 'physicsFrench.dart';
import 'chemistryFrench.dart';
import 'quizzesFrench.dart'; // Import the QuizzesPage

class FrenchHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study App - French', textAlign: TextAlign.center),
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
              hint: Text('Matières'),
              onChanged: (String? value) {
                if (value != null) {
                  switch (value) {
                    case 'Biologie':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BiologyPage(),
                        ),
                      );
                      break;
                    case 'Physique':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PhysicsPage(),
                        ),
                      );
                      break;
                    case 'Chimie':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChemistryPage(), // Navigate to ChemistryPage
                        ),
                      );
                      break;
                    case 'Quiz': // Navigate to QuizzesPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageQuizzes(),
                        ),
                      );
                      break;
                  }
                }
              },
              items: <String>['Biologie', 'Physique', 'Chimie', 'Quiz'] // Add 'Quiz' as an option
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

class SubjectScreen extends StatelessWidget {
  final String subject;

  SubjectScreen({required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subject),
      ),
      body: Center(
        child: Text(
          'Bienvenue sur l\'écran de matière $subject !',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
