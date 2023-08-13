import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  final String data;
  const TextLearnView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            data,
            style: ProjectStyles.welcomeStyle,
            maxLines: 2, 
            overflow: TextOverflow.ellipsis, 
          ),
          Text(
            data,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.yellow), 
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
    wordSpacing: 2,
    letterSpacing: 2,
    fontSize: 24,
    color: Colors.red,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
  );
}


class ProjectColors {
  static Color yellowColor = Colors.yellow;
}

class ProjectKeys {
  final String welcome = "Welcome to the";
}