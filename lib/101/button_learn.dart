import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // TextButton
          textButton(),
          // ElevatedButton
          elevatedButton(),
          // IconButton
          iconButton(),
          // FloatActionButton
          floatinButton(),
          // OutlineButton
          outlinedButton(),
          // InkwellButton
          inkwellButton(),
          Container(
            height: 200,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
              child: Text(
                "Place Bild",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  InkWell inkwellButton() {
    return InkWell(
      onTap: () {
        print("Inkwell");
      },
      child: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    );
  }

  OutlinedButton outlinedButton() {
    return OutlinedButton(
      onPressed: () {},
      child: Text("Outline Button"),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(),
      ),
    );
  }

  FloatingActionButton floatinButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
    );
  }

  IconButton iconButton() {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.add_a_photo),
    );
  }

  ElevatedButton elevatedButton() {
    return ElevatedButton(
      onPressed: () {
        print("object 2");
      },
      child: Text("Elevated Button"),
    );
  }

  TextButton textButton() {
    return TextButton(
      onPressed: () {
        print("object");
      },
      child: Text("Button"),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((state) {
        if (state.contains(MaterialState.pressed)) {
          return Colors.green;
        }
        return Colors.white;
      })),
    );
  }
}

// Borders
// CircleBorder(), RoundedRectangleBorder()
