import 'package:flutter/material.dart';

import '../../101/color_learn.dart';

class LightTheme {
  // ThemeData theme =  ThemeData.dark().copyWith(
  //       tabBarTheme: TabBarTheme(
  //         labelColor: Colors.white,
  //         unselectedLabelColor: Colors.red,
  //         indicatorSize: TabBarIndicatorSize.label,
  //       ),
  //       errorColor: ColorItems.sulu,
  //       appBarTheme: AppBarTheme(
  //         backgroundColor: Colors.transparent,
  //         elevation: 0,
  //         centerTitle: true,
  //       ),
  //       cardTheme: CardTheme(color: Colors.red),
  //       inputDecorationTheme: InputDecorationTheme(
  //         filled: true,
  //         fillColor: Colors.green,
  //         iconColor: Colors.red,
  //         border: OutlineInputBorder(),
  //         floatingLabelStyle: TextStyle(
  //           color: Colors.red,
  //           fontSize: 24,
  //           fontWeight: FontWeight.w400,
  //         ),
  //       ),
  //       textTheme: TextTheme(
  //         subtitle1: TextStyle(color: Colors.blue),
  //       ));
  final _lightColor = _LightColor();
  late ThemeData theme;
  LightTheme() {
    theme = ThemeData(
      appBarTheme: AppBarTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        ),
      ),
      scaffoldBackgroundColor: Colors.white60,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.green,
      ),
      textTheme: ThemeData.light().textTheme.copyWith(
            subtitle1: TextStyle(
              fontSize: 25,
              color: _lightColor._textColor,
            ),
          ),
      colorScheme: ColorScheme.light(),
      checkboxTheme: CheckboxThemeData(
        side: BorderSide(color: Colors.yellow),
        fillColor: MaterialStateProperty.all(Colors.red),
      ),
    );
  }
  // ThemeData theme =  ThemeData(
  //   floatingActionButtonTheme: FloatingActionButtonThemeData(
  //     backgroundColor: _lightColor._textColor,),
  //     textTheme: ThemeData.light().textTheme.copyWith(
  //       subtitle1: TextStyle(fontSize: 25),
  //     ),
  // );
}

class _LightColor {
  final Color _textColor = Colors.black;
}
