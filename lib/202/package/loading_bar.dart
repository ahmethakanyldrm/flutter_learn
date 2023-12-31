import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({super.key, this.size});
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SpinKitPianoWave(
      size: size ?? 50,
      color: Colors.red,
    );
  }
}
