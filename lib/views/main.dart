import 'package:flutter/material.dart';
import '../widgets/question.dart';
import '../widgets/answer.dart';

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
            Question(questionText: questions[_selectedQuestion]),
            Answer(answerText: 'Answer 1', selected: _answer),
            Answer(answerText: 'Answer 3', selected: _answer),
            Answer(answerText: 'Answer 3', selected: _answer),
            Answer(answerText: 'Answer 2', selected: _answer),
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
