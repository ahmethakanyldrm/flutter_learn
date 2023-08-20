import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_learn/202/Service/post_model.dart';

import 'comments_model.dart';

abstract class IPostService {
  Future<bool> addItemToService(Post postModel);

  Future<bool> updateItemToService(Post postModel, int id);

  Future<bool> deleteItemToService(Post postModel, int id);

  Future<List<Post>?> fetchPostItemsAdvance();

  Future<List<Comment>?> fetchReleatedCommentsWithPostId(int postId);
}

class PostService implements IPostService {
  late final Dio _networkManager;

  PostService()
      : _networkManager =
            Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));

  @override
  Future<bool> addItemToService(Post postModel) async {
    try {
      final response = await _networkManager.post(_PostServicePath.posts.name,
          data: postModel);
      return response.statusCode == HttpStatus.created;
    } on DioError catch (e) {
      _ShowDebug.showDioError(e);
    }
    return false;
    /*
    if (response.statusCode == HttpStatus.created) {
      print(response);
    } */
  }

  @override
  Future<bool> updateItemToService(Post postModel, int id) async {
    try {
      final response = await _networkManager
          .put("${_PostServicePath.posts.name}/$id", data: postModel);
      return response.statusCode == HttpStatus.ok;
    } on DioError catch (e) {
      _ShowDebug.showDioError(e);
    }
    return false;
  }

  @override
  Future<bool> deleteItemToService(Post postModel, int id) async {
    try {
      final response = await _networkManager
          .put("${_PostServicePath.posts.name}/$id", data: postModel);
      return response.statusCode == HttpStatus.ok;
    } on DioError catch (e) {
      _ShowDebug.showDioError(e);
    }
    return false;
  }

  @override
  Future<List<Post>?> fetchPostItemsAdvance() async {
    try {
      final response = await _networkManager.get("/posts");
      print(response);
      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => Post.fromJson(e)).toList();
        }
      }
    } on DioError catch (e) {
      _ShowDebug.showDioError(e);
    }
    return null;
  }

  @override
  Future<List<Comment>?> fetchReleatedCommentsWithPostId(int postId) async{
    try {
      final response = await _networkManager.get(_PostServicePath.comment.name,
      queryParameters: {_PostQueryPaths.postId.name: postId}
      );
      print(response);
      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => Comment.fromJson(e)).toList();
        }
      }
    } on DioError catch (e) {
      _ShowDebug.showDioError(e);
    }
    return null;
  }
}

enum _PostServicePath { posts, comment }
enum _PostQueryPaths { postId }

class _ShowDebug {
  static void showDioError(DioError error) {
    if (kDebugMode) {
      print(error.message);
    }
  }
}
