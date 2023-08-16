import 'package:flutter/material.dart';
import 'package:flutter_learn/product/counterHelloButton.dart';
import 'package:flutter_learn/product/language/language_items.dart';

// değişmez component sadece dışardan data alır
// dışardan data al ver haberleşme işini yapar
class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

// hayat burada şekillenir
// asıl logicleri yazacağımız yer
class _StatefullLearnState extends State<StatefullLearn> {
  int _counter = 0;

/*
  void increment() {
    setState(() {
      _counter += 1;
    });
  }

  void deincrement() {
    setState(() {
      _counter -= 1;
    });
  }

 */

  void _updateCounter(bool isIncrement) {
    setState(() {
      if (isIncrement) {
        _counter += 1;
      } else {
        _counter -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LanguageItems.welcomeTitle,
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          incrementButton(),
          deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Placeholder(),
          CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton incrementButton() {
    print("burada");
    return FloatingActionButton(
      onPressed: () {
        // increment();
        _updateCounter(true);
      },
      child: Icon(Icons.add),
    );
  }

  Padding deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          //deincrement();
          _updateCounter(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
