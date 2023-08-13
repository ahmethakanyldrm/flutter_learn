import 'package:flutter/material.dart';
import 'package:flutter_learn/101/container_sized_box_learn.dart';
import 'package:flutter_learn/101/text_learn.dart';

import '101/scaffold_learn.dart';

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

      theme: ThemeData.dark(),
      //(

      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
      // useMaterial3: true,
      // ),
      home: ScaffoldLearn(),
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
