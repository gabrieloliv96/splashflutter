import 'package:flutter/foundation.dart';
import 'package:splashproject/models/post_model.dart';
import 'package:splashproject/repositories/index_repository.dart';

class IndexController {

  final IndexRepository _indexRepository;

  IndexController(this._indexRepository);

  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetch() async {
    posts.value = await _indexRepository.getList();
  }

}