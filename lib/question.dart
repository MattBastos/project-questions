import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String textQuestion;

  const Question({
    super.key,
    required this.textQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Text(textQuestion);
  }
}