class Photos{
  late int albumId;
  late int id;
  late String title;
  late String url;
  late String thumbnailUrl;

  Photos(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  Photos.fromJson(Map<String, dynamic> json){
    albumId = json['albumId'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
  }

  Map<String, dynamic>toJson(){
    Map<String, dynamic>map = {
      'albumId' : albumId,
      'id' : id,
      'title' : title,
      'url' : url,
      'thumbnailUrl' : thumbnailUrl
    };
    return map;
  }
  @override
  String toString() {
    return "title: $title\nurl: $url\nthumbnaiUrl: $thumbnailUrl";
  }
}