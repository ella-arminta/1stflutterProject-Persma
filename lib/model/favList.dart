import 'package:flutter_chall/model/article.dart';

class FavList {
  List<Article> favList = [];
  void addFavList(Article newFav) {
    favList.add(newFav);
  }

  void delFav(Article del) {
    favList.remove(del);
  }

  List<Article> getFavList() {
    return favList;
  }
}

FavList favlist = FavList();
