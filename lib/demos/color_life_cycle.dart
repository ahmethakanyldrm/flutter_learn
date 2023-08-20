import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/color_demos_view.dart';

class ColorLifeCycle extends StatefulWidget {
  const ColorLifeCycle({super.key});

  @override
  State<ColorLifeCycle> createState() => _ColorLifeCycleState();
}

class _ColorLifeCycleState extends State<ColorLifeCycle> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _changeBackgroundColor,
            icon: Icon(Icons.clear),
          ),
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(
            // Yanlış kullanım-> doğrusu alt widget a null gönderebiliriz alt widget kontrol etmesi lazım
            //child: ColorDemos(initialColor: _backgroundColor ?? Colors.transparent,),
            child: ColorDemos(initialColor: _backgroundColor),
          ),
        ],
      ),
    );
  }

  void _changeBackgroundColor() {
            setState(() {
              _backgroundColor = Colors.pink;
            });
          }
}
