import 'package:flutter/material.dart';

main() => runApp(const QuestionsApp());

class QuestionsAppState extends State<QuestionsApp> {
  var selectedQuestion = 0;

  final List<String> answers = [];

  void answer() {
    setState(() => selectedQuestion += 1);
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
            Text(questions[selectedQuestion]),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: answer,
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
  QuestionsAppState createState() {
    return QuestionsAppState();
  }
}
