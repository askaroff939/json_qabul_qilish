class Comment{
  late int postId;
  late int id;
  late String name;
  late String email;
  late String body;

  Comment(this.postId, this.id, this.name, this.email, this.body);

  Comment.fromJson(Map<String, dynamic> json){
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  Map<String, dynamic>toJson(){
    Map<String, dynamic>map = {
      'postId' : postId,
      'id' : id,
      'name' : name,
      'email' : email,
      'body' : body,
    };
    return map;
  }
  @override
  String toString() {
    return "name: $name\nemail: $email\nbody: $body";
  }
}