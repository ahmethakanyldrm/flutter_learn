// bir ekran olacak
// bu ekranda 3 buton ve bunlara basınca renk değişimi
// seçili olan buton selected icon

import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  // Color? _backgroundColor = Colors.transparent;
  Color? _backgroundColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
   // inspect(widget);
    if (widget.initialColor != _backgroundColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  // build içerisinde çok fazla logic görmemeliyiz o yüzden
  // parçalamak önemli (onTap içerisinde logic yazmak yerine
  // fonksiyonda yaz onTapte çağır)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorChangeOnTap,
        items: [
          BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.red,
            ),
            label: "Red",
          ),
          BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.blue,
            ),
            label: "Blue",
          ),
          BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.yellow),
            label: "Yellow",
          ),
        ],
      ),
    );
  }

  void _colorChangeOnTap(int value){
        //print(value);
        if (value == _MyColors.red.index) {
          changeBackgroundColor(Colors.red);
        }else if (value == _MyColors.blue.index) {
          changeBackgroundColor(Colors.blue);
        }else {
          changeBackgroundColor(Colors.yellow);
        }
      }
}

enum _MyColors {
  red,blue,yellow
}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
