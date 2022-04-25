import 'package:http/http.dart';
import 'package:lesson9/models/albums_model.dart';
import 'package:lesson9/models/korona.model.dart';
import 'package:lesson9/models/photos_model.dart';
import 'package:lesson9/models/post_model.dart';
import 'dart:convert';
import 'package:lesson9/models/comment_model.dart';
import 'package:lesson9/models/todos_model.dart';
import 'package:lesson9/models/user_model.dart';


void main() async {
  // Corona? corona;
  // String baseUrlCorona = "corona.lmao.ninja";
  // String apiGetCorona = "/v2/all";
  // String? resultCorona = await GET(baseUrlCorona, apiGetCorona);
  //
  // if(resultCorona != null) {
  //   corona = parseCorona(resultCorona);
  // }
  // print(corona!.toJson().toString());
  //
  // print("\n");
  // print("******************************");
  // print("\n");
  //
  // Post? post;
  // String baseUrlPost = "jsonplaceholder.typicode.com";
  // String apiGetPost = "/posts/1";
  // String? resultPost = await GET(baseUrlPost, apiGetPost);
  //
  // if(resultPost != null) {
  //   post = parsePost(resultPost);
  // }
  // print(post!.toJson().toString());
  //
  // print("\n");
  // print("**********************");
  // print("\n");
  //
  // Comment? comment;
  // String baseUrlComments = "jsonplaceholder.typicode.com";
  // String apiGetComments = "/comments/1";
  // String? resultComments = await GET(baseUrlComments, apiGetComments);
  //
  // if(resultComments != null) {
  //   comment = parseComment(resultComments);
  // }
  // print(comment!.toJson().toString());
  //
  // print("\n");
  // print("**********************");
  // print("\n");
  //
  // Albums? albums;
  // String baseUrlAlbums = "jsonplaceholder.typicode.com";
  // String apiGetAlbums = "/albums/1";
  // String? resultAlbums = await GET(baseUrlAlbums, apiGetAlbums);
  //
  // if(resultAlbums != null) {
  //   albums = parseAlbums(resultAlbums);
  // }
  // print(albums!.toJson().toString());
  //
  // print("\n");
  // print("**********************");
  // print("\n");
  //
  // Photos? photos;
  // String baseUrlPhotos = "jsonplaceholder.typicode.com";
  // String apiGetPhotos = "/photos/2";
  // String? resultPhotos = await GET(baseUrlPhotos, apiGetPhotos);
  //
  // if(resultPhotos != null) {
  //   photos = parsePhotos(resultPhotos);
  // }
  // print(photos!.toJson().toString());
  //
  // print("\n");
  // print("**********************");
  // print("\n");
  //
  // Todos? todos;
  // String baseUrlTodos = "jsonplaceholder.typicode.com";
  // String apiGetTodos = "/todos/3";
  // String? resultTodos = await GET(baseUrlTodos, apiGetTodos);
  //
  // if(resultTodos != null) {
  //   todos = parseTodos(resultTodos);
  // }
  // print(todos!.toJson().toString());
  //
  // print("\n");
  // print("**********************");
  // print("\n");

//   List<Post> list = [];
//   String baseUrlPosts = "jsonplaceholder.typicode.com";
//   String apiGetPosts = "/posts";
//   String? resultPosts = await GET(baseUrlPosts, apiGetPosts);
//   if (resultPosts != null) {
//     list = parsePostList(resultPosts);
//   }
//   for (Post item in list) {
//     print("title: ${item.title}");
//   }
//
//
  User? user;
  String baseUrl = "jsonplaceholder.typicode.com" ;
  String api0neUser = "/users/5";

  String? result = await GET(baseUrl, api0neUser);
  if( result != null) {
    user = parse0neUser(result);
  }
  print(user!.toJson());


  List<User> list1 = [];
  String baseUrlUsers = "jsonplaceholder.typicode.com";
  String apiGetUsers = "/users";
  String? resultUsers = await GET(baseUrlUsers, apiGetUsers);
  if (resultUsers != null) {
    list1 = parseUserList(resultUsers);
  }
  for (User item in list1) {
    print(item.toJson());
  }
}


  Future<String?> GET(String baseUrl, String api) async {
    Uri url = Uri.https(baseUrl, api);
    Response response = await get(url);

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }

  List<Post> parsePostList(String response) {
    List list = jsonDecode(response);
    List<Post> result = list.map((map) => Post.fromJson(map)).toList();
    return result;
  }

  List<User> parseUserList(String response) {
  List list = jsonDecode(response);
  List<User> result = list.map((map) => User.fromJson(map)).toList();
  return result;
}

  Corona parseCorona(String response) {
    Map<String, dynamic> json = jsonDecode(response);
    Corona corona = Corona.fromJson(json);
    return corona;
  }

  Post parsePost(String response) {
    Map<String, dynamic> json = jsonDecode(response);
    Post post = Post.fromJson(json);
    return post;
  }

  Comment parseComment(String response) {
    Map<String, dynamic> json = jsonDecode(response);
    Comment comment = Comment.fromJson(json);
    return comment;
  }

  Albums parseAlbums(String response) {
    Map<String, dynamic> json = jsonDecode(response);
    Albums albums = Albums.fromJson(json);
    return albums;
  }

  Photos parsePhotos(String response) {
    Map<String, dynamic> json = jsonDecode(response);
    Photos photos = Photos.fromJson(json);
    return photos;
  }

  Todos parseTodos(String response) {
    Map<String, dynamic> json = jsonDecode(response);
    Todos todos = Todos.fromJson(json);
    return todos;
  }

  User parse0neUser (String response) {
  Map<String, dynamic> json = jsonDecode (response) ;
  User user = User.fromJson(json);
  return user;
}