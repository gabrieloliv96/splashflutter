import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:splashproject/models/post_model.dart';
import 'package:splashproject/repositories/home_repository.dart';

class HomeRepositoryMock implements HomeRepository{
  @override
  Future<List<PostModel>> getList() async {
    // TODO: implement getList
    var value = await rootBundle.loadString('assets/data.json');
    List postJson = jsonDecode(value);

    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
  
}