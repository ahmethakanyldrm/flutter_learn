import 'package:flutter/material.dart';
import 'package:flutter_learn/202/model_learn.dart';

class ModelLearn extends StatefulWidget {
  const ModelLearn({super.key});

  @override
  State<ModelLearn> createState() => _ModelLearnState();
}

class _ModelLearnState extends State<ModelLearn> {
  PostModel8 user9 = PostModel8(body: "body 9");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final user1 = PostModel();
    user1.body = "Hello";

    final user2 = PostModel2(1, 2, "a", "b");
    user2.body = "hello 2";

    final user3 = PostModel3(1, 2, "a", "b");
    // user3.body = ""; final olduğu için değer değişemez

    final user4 = PostModel4(userId: 1, id: 2, title: "a", body: "b");
    // user4.body = "asa";

    final user5 = PostModel5(userId: 1, id: 2, title: "title", body: "body");
    // user5. private propslar sayesinde değer değişimi engellenir
    //  user5.body = ""; getter setter yazılır

    final user6 = PostModel6(userId: 1, id: 2, title: "title", body: "body");

    // -----------------------
    final user8 = PostModel8();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user9.body ?? "Not has any data"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            user9 = user9.copyWith(title: "vb");
            user9.updateBody("data");
          });
        },
      ),
    );
  }
}
