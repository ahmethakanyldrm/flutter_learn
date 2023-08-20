import 'package:flutter/material.dart';
import 'package:flutter_learn/101/image_learn.dart';
import 'package:flutter_learn/101/list_view_builder.dart';

import 'navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelectedItems(int index, bool isAdd) {
    setState(() {
     isAdd ? selectedItems.add(index) : selectedItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
          onPressed: () async {
            final response = await navigateToWidgetNormal<bool>(
              context,
              NavigateLearn(isOkey: selectedItems.contains(index),),
            );

            if (response is bool) {
              addSelectedItems(index,response);
            }

          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.green : Colors.red,
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigation_rounded),
        onPressed: () async {},
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: RouteSettings(),
      ),
    );
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: RouteSettings(),
      ),
    );
  }
}
