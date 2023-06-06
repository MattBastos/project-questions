import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String textQuestion;

  const Question({
    required this.textQuestion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        textQuestion,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}