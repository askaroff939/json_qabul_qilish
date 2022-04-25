class Todos{
  late int userId;
  late int id;
  late String title;
  late bool completed;

  Todos(this.userId, this.id, this.title, this.completed);

  Todos.fromJson(Map<String, dynamic> json){
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic>toJson(){
    Map<String, dynamic>map = {
      'albumId' : userId,
      'id' : id,
      'title' : title,
      'completed' : completed,
    };
    return map;
  }
  @override
  String toString() {
    return "title: $title\ncompleted: $completed";
  }
}
