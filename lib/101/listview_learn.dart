import 'package:flutter/material.dart';

class ListviewLearn extends StatefulWidget {
  const ListviewLearn({super.key});

  @override
  State<ListviewLearn> createState() => _ListviewLearnState();
}

class _ListviewLearnState extends State<ListviewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
         // Spacer(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                FittedBox(
                  child: Text(
                    "Merhaba",
                    style: Theme.of(context).textTheme.headline1,
                    // maxLines: 1,textScaleFactor: 0.5,
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 250,
                ),
                Divider(),
                Container(
                  color: Colors.green,
                  height: 250,
                ),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        color: Colors.blue,
                        width: 300,
                      ),
                      Container(
                        color: Colors.pink,
                        width: 300,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.close),
                ),
                _ListDemo(),
              ],

            ),
          ),

        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({super.key});

  @override
  State<_ListDemo> createState() => _ListDemoState();

}

class _ListDemoState extends State<_ListDemo> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Hello");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Exit");
  }

  @override
  Widget build(BuildContext context) {
    return  Placeholder();
  }
}

