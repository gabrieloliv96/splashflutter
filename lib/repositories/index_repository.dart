import 'package:splashproject/models/post_model.dart';

abstract class IndexRepository{

  Future<List<PostModel>> getList();
}