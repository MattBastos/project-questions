import 'package:flutter/material.dart';

main() => runApp(QuestionsApp());

class QuestionsApp extends StatelessWidget {
  QuestionsApp({super.key});

  final List<String> questions = [
    "What's your favorite video game?",
    "What's your favorite movie?",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: Column(
          children: [
            Text(questions[0]),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text(questions[1]),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Answer')
            ),
          ],
        ),
      ),
    );
  }
}
