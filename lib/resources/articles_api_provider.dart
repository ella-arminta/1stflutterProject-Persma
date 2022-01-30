import 'dart:convert';

import 'package:flutter_chall/model/article.dart';
import 'package:http/http.dart';

class ArticlesApiProvider {
  String url = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Article>> getArticleList() async {
    List<Article> articles = [];
    Response response = await get(Uri.parse(url));
    // if (response.statusCode == 200) {
    // print("response");
    // print(response.body);
    // }
    for (var json in jsonDecode(response.body)) {
      articles.add(Article.fromJson(json));
    }
    return articles;
  }
}
