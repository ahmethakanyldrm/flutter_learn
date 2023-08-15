import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/101/image_learn.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({super.key});

  final title = "Create your first note";
  final description = "Add a note";
  final buttonTitle = "Create Note";
  final importNotes = "Import Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark,),
      body: Padding(
        padding: PaddingItems.horizontal,
        child: Column(
          children: [
            PngImage(
              path: ImageItems().appleWithBook,
            ),
            _TitleText(title: title),
            Padding(
              padding: PaddingItems.vertical,
              child: _SubTitleText(description: description),
            ),
            Spacer(),
            createButton(context),
            TextButton(
              onPressed: () {},
              child: Text(importNotes),
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }

  ElevatedButton createButton(BuildContext context) {
    return ElevatedButton(
            onPressed: () {
              print("Created note");
            },
            child: SizedBox(
              height: ButtonHeights.buttonNormalHeight,
              child: Center(
                child: Text(
                  buttonTitle,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ),
          );
  }
}

/// Center text Widget
class _SubTitleText extends StatelessWidget {
  const _SubTitleText({
    super.key,
    required this.description,
    this.textAlign = TextAlign.center,
  });

  final String description;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      description * 10,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
    );
  }
}

class PaddingItems {
  static final EdgeInsets horizontal = EdgeInsets.symmetric(horizontal: 20);
  static final EdgeInsets vertical = EdgeInsets.symmetric(horizontal: 20);
}

class ButtonHeights {
  static double buttonNormalHeight = 50;
}
