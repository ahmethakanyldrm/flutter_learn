import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: 400,
              width: 300,
              child: PngImage(path: ImageItems().appleWithBook,),

          ),
        ],
      ),
    );
  }
}


class ImageItems {
  final String appleWithBook = "assets/png/apple.png";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      fit: BoxFit.cover,
    );
  }
}
