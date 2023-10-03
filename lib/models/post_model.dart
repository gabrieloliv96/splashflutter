class PostModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel(this.userId, this.id, this.title, this.body);

  Map<dynamic, String> toMap() {
    return { 'userId' : userId, 'id': id, 'title' : title, body' : body,};
  };

  factory PostModel.fromJson(Map json) {
    return PostModel(
      json['userId'],
      json['id'],
      json['title'],
      json['body'],
    );
  }

  @override
  String toString() {
    return "id: $id";
  }
}
