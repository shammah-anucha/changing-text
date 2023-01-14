import 'package:flutter/material.dart';
import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<TextControl> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  final _texts = const [
    'You are wonderfully made.',
    'Be the best version of yourself.',
    'You are special.',
    'You have great ideas and you can actualize them.',
    'You can do what you set your mind to do',
  ];
  var _textIndex = 0;

  void _resetText() {
    setState(() {
      _textIndex = 0;
    });
  }

  void _changeText() {
    setState(() {
      _textIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextOutput(
          texts: _texts,
          textIndex: _textIndex,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
          onPressed:
              _textIndex == (_texts.length - 1) ? _resetText : _changeText,
          child: Text('More Inspiration'),
        ),
      ],
    );
  }
}
