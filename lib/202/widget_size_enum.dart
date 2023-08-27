import 'package:flutter/material.dart';

class WidgetSizesEnum extends StatefulWidget {
  const WidgetSizesEnum({super.key});

  @override
  State<WidgetSizesEnum> createState() => _WidgetSizesEnumState();
}

class _WidgetSizesEnumState extends State<WidgetSizesEnum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          height: WidgetSizes.normalCardHeight.value(),
          color: Colors.green,
        ),
      ),
    );
  }
}

enum WidgetSizes { normalCardHeight, circleProfile }

extension WidgetSizesExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 30;
      case WidgetSizes.circleProfile:
        return 25;
      default:
        return 15;
    }
  }
}

