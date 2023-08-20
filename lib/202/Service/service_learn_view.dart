import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/202/Service/post_model.dart';
import 'package:flutter_learn/202/Service/post_service.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<Post>? _items;
  bool _isLoading = false;
 late final Dio _networkManager;
 final baseUrl = "https://jsonplaceholder.typicode.com";

 late final PostService _postService;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl:baseUrl));
    _postService = PostService();
    fetchPostItemsAdvance();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItems() async {
    _changeLoading();
    final response =
    await Dio().get("https://jsonplaceholder.typicode.com/posts");
    print(response);
    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;
      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => Post.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  Future<void> fetchPostItemsAdvance() async {
    _changeLoading();
    _items = await _postService.fetchPostItemsAdvance();
    _changeLoading();
  }

/*
  Future<void> fetchPostItemsAdvance() async {
    _changeLoading();
    final response =
    await _networkManager.get("/posts");
    print(response);
    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;
      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => Post.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

 */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service & Data"),
      ),
      body: _items == null ? Placeholder() : ListView.builder(
          itemCount: _items?.length ?? 0,
          itemBuilder: (context, index) {
            return _PostCard(model: _items?[index]);
          }),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required Post? model,
  }): _model = model, super(key: key);

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
