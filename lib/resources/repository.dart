import 'package:flutter_chall/model/article.dart';
import 'package:flutter_chall/resources/articles_api_provider.dart';

class Repository {
  ArticlesApiProvider articlesApiProvider = ArticlesApiProvider();

  Future<List<Article>> fetchArticleList() =>
      articlesApiProvider.getArticleList();

  // Future<List<Article>> fetchArticleList() =>
  //   articlesApiProvider.getArticleList();
}

Repository repository = Repository();
