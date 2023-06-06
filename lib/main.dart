import 'package:flutter/material.dart';

main() => runApp(const QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  int _selectedQuestion = 0;

  final List<String> answers = [];

  void _answer() {
    setState(() => _selectedQuestion += 1);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      "What's your favorite video game?",
      "What's your favorite movie?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: Column(
          children: [
            Text(questions[_selectedQuestion]),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: _answer,
              child: const Text('Answer')
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionsApp extends StatefulWidget {
  const QuestionsApp({super.key});

  @override
  State<QuestionsApp> createState() => _QuestionsAppState();
}
