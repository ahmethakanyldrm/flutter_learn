import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/202/Service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  List<Post>? _items;
  bool _isLoading = false;
  late final Dio _networkManager;
  final baseUrl = "https://jsonplaceholder.typicode.com/";
  String? name;

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: baseUrl));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToService(Post postModel) async {
    _changeLoading();
    final response = await _networkManager.post("posts", data: postModel);

    if (response.statusCode == HttpStatus.created) {
      print(response);
      name = "Data Gönderildi";
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$name"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(labelText: "Title"),
          ),
          TextField(
            controller: _bodyController,
            decoration: InputDecoration(labelText: "Body"),
          ),
          TextField(
            controller: _userIdController,
            decoration: InputDecoration(labelText: "UserId"),
            keyboardType: TextInputType.number,
          ),
          TextButton(
            onPressed : _isLoading ? null : () {
              if (_titleController.text.isNotEmpty &&
                  _bodyController.text.isNotEmpty &&
                  _userIdController.text.isNotEmpty) {
                final model = Post(
                    body: _bodyController.text,
                    title: _titleController.text,
                    userId: int.tryParse(_userIdController.text));
                _addItemToService(model);
              }
            },
            child: Text("Send"),
          ),
        ],
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required Post? model,
  })  : _model = model,
        super(key: key);

  final Post? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ""),
        subtitle: Text(_model?.body ?? ""),
      ),
    );
  }
}
