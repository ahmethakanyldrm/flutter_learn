import 'package:flutter/material.dart';
import 'package:flutter_learn/101/color_learn.dart';
import 'package:flutter_learn/101/page_view_learn.dart';
import 'package:flutter_learn/101/text_learn.dart';

import '101/image_learn.dart';
import '101/statefull_learn.dart';
import '101/statefull_life_cycle.dart';
import '101/text_field_learn.dart';
import 'demos/note_demos_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Veli Dayı',

      theme: ThemeData.dark().copyWith(
        errorColor: ColorItems.sulu,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        cardTheme: CardTheme(color: Colors.red),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.green,
          iconColor: Colors.red,
          border: OutlineInputBorder(),
          floatingLabelStyle: TextStyle(
            color: Colors.red,
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        textTheme: TextTheme(
          subtitle1: TextStyle(color: Colors.blue),
        ),
      ),

      //(

      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
      // useMaterial3: true,
      // ),
      home: TextFieldLearn(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title, required this.money});

//   final String title;
//   final int money;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//         actions: [
//           Text(widget.money.toString()),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//       ),
//     );
//   }
// }
