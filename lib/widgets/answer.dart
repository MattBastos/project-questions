import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final void Function() selected;

  const Answer({
    required this.answerText,
    required this.selected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.blue),
        ),
        onPressed: selected,
        child: Text(answerText)
      ),
    );
  }
}
