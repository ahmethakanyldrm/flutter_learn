import 'package:flutter/material.dart';
import 'package:flutter_learn/202/package/launch_manager.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package/loading_bar.dart';

class PackageLearn extends StatefulWidget {
  const PackageLearn({super.key});

  @override
  State<PackageLearn> createState() => _PackageLearnState();
}

class _PackageLearnState extends State<PackageLearn>
    with TickerProviderStateMixin, LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "data",
           style:Theme.of(context).textTheme.subtitle1,
          ),
          LoadingBar(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          launchURL("https://www.google.com");
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  // void _launchUrl(String url) async {
  //   // ignore: deprecated_member_use
  //   if (!await launch(url)) throw "Could not launch $url";
  // }
}
