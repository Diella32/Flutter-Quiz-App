import 'package:flutter/material.dart';
import 'bioQuizFrench.dart';
import 'physicsQuizFrench.dart';
import 'chemQuizFrench.dart';

class PageQuizzes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzes', textAlign: TextAlign.center),
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
              hint: Text('Sélectionnez le quiz'),
              onChanged: (String? value) {
                if (value != null) {
                  switch (value) {
                    case 'Biologie':
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageQuizBiologie(),
                        ),
                      );
                      break;
                    case 'Physique':
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageQuizPhysique(),
                        ),
                      );
                      break;
                    case 'Chimie':
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageQuizChimie(),
                        ),
                      );
                      break;
                  }
                }
              },
              items: <String>['Biologie', 'Physique', 'Chimie']
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value + ' Quiz'),
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
    home: PageQuizzes(),
  ));
}