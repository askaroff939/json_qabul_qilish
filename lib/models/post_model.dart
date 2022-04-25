class Post{
  late int userId;
  late int id;
  late String title;
  late String body;

  Post(this.userId, this.id, this.title, this.body);

  Post.fromJson(Map<String, dynamic> json){
    userId = json['userId'];
    id = json['id'];
    title = json["title"];
    body = json["body"];
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'userID' : userId,
      'id' : id,
      'title' : title,
      'body' : body
    };
    return map;
  }
  @override
  String toString() {
    return "title: $title\nbody: $body";
  }
}

