import 'package:flutter/material.dart';
import 'text_control.dart';

class TextOutput extends StatelessWidget {
  final List<String> texts;
  final int textIndex;

  TextOutput({
    required this.texts,
    required this.textIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        texts[textIndex],
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
