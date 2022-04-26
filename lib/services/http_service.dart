import 'dart:convert';

import 'package:http/http.dart';

import '../models/albums_model.dart';
import '../models/korona.model.dart';
import '../models/photos_model.dart';
import '../models/post_model.dart';
import '../models/todos_model.dart';
import '../models/user_model.dart';

class NetworkService {
  // URL
  static const String baseUrl = "jsonplaceholder.typicode.com";

  // HEADERS
  static Map<String, String> headers = {
    'Content-type': 'application/json; charset=UTF-8',
  };

  // APIS
  static const String apiPosts = "/posts";
  static const String apiPost = "/posts/"; // {id}
  static const String apiAlbums = "/albums";
  static const String apiAlbum = "/albums/"; // {id}
  static const String apiComments = "/comments";
  static const String apiComment = "/comments/"; // {id}
  static const String apiPhotos = "/photos";
  static const String apiPhoto = "/photos/";  //  {id}
  static const String apiTodos = "/todos";
  static const String apiTodo = "/todos/";  //  {id}
  static const String apiUsers = "/users";
  static const String apiUser = "/user/";  //  {id}

  // METHODS

  static Future<String> GET(String api, Map<String, String> headers) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await get(uri, headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error");
    }
  }

  static Future<String> POST(String api, Map<String, String> headers,
      Map<String, dynamic> body) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response =
        await post(uri, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error");
    }
  }

  static Future<String> PUT(String api, Map<String, String> headers,
      Map<String, dynamic> body) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response =
        await put(uri, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error");
    }
  }

  static Future<String> PATCH(String api, Map<String, String> headers,
      Map<String, dynamic> body) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response =
        await patch(uri, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error");
    }
  }

  static Future<String> DELETE(String api, Map<String, String> headers) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await delete(uri, headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error");
    }
  }

  // PARSING
  static List<Post> parsePostList(String body) {
    List json = jsonDecode(body);
    List<Post> posts = json.map((map) => Post.fromJson(map)).toList();
    return posts;
  }

  static List<Albums> parseAlbumList(String body) {
    List json = jsonDecode(body);
    List<Albums> albums = json.map((map) => Albums.fromJson(map)).toList();
    return albums;
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
}
