import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String textQuestion;

  const Question({
    required this.textQuestion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(textQuestion);
  }
}