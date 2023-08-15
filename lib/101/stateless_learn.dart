import 'package:flutter/material.dart';

// datayı vericem datayı alcam mantığıyla kullanılır
// context ->
class StatelessWidgetLearn extends StatelessWidget {
  const StatelessWidgetLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // Text(
          //   "data",
          //   style: Theme.of(context).textTheme.headline3,
          // ),
          TitleText(
            title: "Veli",
          ),
          TitleText(
            title: "Veli",
          ),
          TitleText(
            title: "Veli",
          ),
          TitleText(
            title: "Veli",
          ),
          TitleText(
            title: "Veli",
          ),
          _CustomContainer(),

          emptyBox(),
        ],
      ),
    );
  }

  SizedBox emptyBox() => SizedBox(height: 10,);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      "data",
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
