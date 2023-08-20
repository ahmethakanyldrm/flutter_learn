import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(itemBuilder: (context, index){
        return  SizedBox(
          height: 200,
          // column içinde (image kullanırken) ekranda taşma olursa expanded kullan 
          child: Column(
            children: [
              Expanded(child: Image.network("https://picsum.photos/200")),
              Text("$index"),
            ],
          ),
        );
      }, separatorBuilder: (context,index){
        return Divider(
          color: Colors.green,
        );
      }, itemCount: 15),
    );
  }

  ListView _listViewBuilder() {
    return ListView.builder(itemBuilder: (context,index) {
      print(index);
     return Column(
       children: [
         Placeholder(
           color: Colors.red,
         ),
         Text("$index"),
       ],
     );
    },);
  }
}
