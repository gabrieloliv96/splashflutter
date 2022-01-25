import 'package:flutter/foundation.dart';
import 'package:splashproject/models/post_model.dart';
import 'package:splashproject/repositories/home_repository.dart';

class HomeController {

  final HomeRepository _homeRepository;

  HomeController(this._homeRepository);

  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetch() async {
    posts.value = await _homeRepository.getList();
  }

}