import 'dart:convert';
import 'package:flutter_chall/model/comments.dart';
import 'package:http/http.dart';

class CommentsApiProvider {
  int id = 1;
  CommentsApiProvider(this.id);
  Future<List<Comments>> getCommentsById() async {
    String url = "https://jsonplaceholder.typicode.com/posts/" +
        id.toString() +
        "/comments";
    List<Comments> comments = [];
    Response response = await get(Uri.parse(url));
    // print(id.toString());
    // print("comments");
    // print(response.body);
    for (var json in jsonDecode(response.body)) {
      comments.add(Comments.fromJson(json));
    }
    return comments;
  }
}
