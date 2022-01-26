import 'package:dio/dio.dart';
import 'package:splashproject/models/post_model.dart';

import 'index_repository.dart';

class IndexRepositoryImp implements IndexRepository {
  @override
  Future<List<PostModel>> getList() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      // print(response);
      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }
    return [];
  }
}
