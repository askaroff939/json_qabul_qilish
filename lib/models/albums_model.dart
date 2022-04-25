class Albums{

  late int userId;
  late int id;
  late String title;

  Albums(this.userId, this.id, this.title,);

  Albums.fromJson(Map<String, dynamic> json){
    userId = json['userId'];
    id = json['id'];
    title = json["title"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'userID' : userId,
      'id' : id,
      'title' : title,
    };
    return map;
  }
  @override
  String toString() {
    return "id: $id\nuserID: $userId\ntitle: $title\n";
  }

}