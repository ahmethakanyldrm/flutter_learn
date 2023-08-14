import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Theme.of(context).errorColor,
      ),
    );
  }
}

class ColorItems {
  final Color porchase = Color(0xFFED8F61);
  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
