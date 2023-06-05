import 'package:flutter/material.dart';

main() => runApp(const QuestionsApp());

class QuestionsApp extends StatelessWidget {
  const QuestionsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: const Text('Hello World!!!'),
      ),
    );
  }
}
