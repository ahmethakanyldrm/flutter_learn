import 'package:flutter/material.dart';

class MyCollectionsDemo extends StatefulWidget {
  const MyCollectionsDemo({super.key});

  @override
  State<MyCollectionsDemo> createState() => _MyCollectionsDemoState();
}

class _MyCollectionsDemoState extends State<MyCollectionsDemo> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _items = CollectionItems().items;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: PaddingUtility().horizontalPadding,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
        itemCount: _items.length,
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black12,
      margin: PaddingUtility().paddingTop ,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  _model.imagePath,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_model.title),
                    Text("${_model.price} eth"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class PaddingUtility {
  final paddingTop = EdgeInsets.only(top: 10);
  final bottomPadding = EdgeInsets.only(bottom: 20);
  final paddingGeneral = EdgeInsets.all(20);
  final horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(
          imagePath: ProjectStrings().imagePath,
          title: ProjectStrings().title,
          price: 3.4),
      CollectionModel(
          imagePath: ProjectStrings().imagePath,
          title: ProjectStrings().title,
          price: 3.4),
      CollectionModel(
          imagePath: ProjectStrings().imagePath,
          title: ProjectStrings().title,
          price: 3.4),
      CollectionModel(
          imagePath: ProjectStrings().imagePath,
          title: ProjectStrings().title,
          price: 3.4),
    ];
  }
}

class ProjectStrings {
  final imagePath = "assets/png/image_collection.png";
  final title = "Abstract art 3";
}