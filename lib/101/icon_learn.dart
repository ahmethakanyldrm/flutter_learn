import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({super.key});
  final IconSize iconSize = IconSize();
  final redColor = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.message_outlined,
            color: redColor.red,
            // size: IconSize().iconSmall,
            size: iconSize.iconSmall,
          ),
        ),
      ]),
    );
  }
}

class IconSize {
  final double iconSmall = 20;
}

class IconColors {
  final Color red = Colors.red;
}