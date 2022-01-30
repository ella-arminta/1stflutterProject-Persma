import 'dart:math';

class Article {
  bool fav = false;
  String title = "";
  String text = "";
  String photographer = "";
  String author = "";
  String photoThumb = "assets/photoThumb/";
  String type = "";
  int id = 0;
  int userId = 0;
  Article(
    this.title,
    this.text,
    this.photographer,
    this.author,
    String photoThumb,
    this.type,
  ) {
    this.photoThumb = this.photoThumb + photoThumb;
  }
  Article.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    text = json['body'];
    id = json['id'];
    userId = json['userId'];
    photographer = "Bambang";
    author = "Yuli";
    final _random = Random();
    int num = _random.nextInt(6 - 1) + 1;
    photoThumb += num.toString() + ".jpg";
    // photoThumb += "1.jpg";
    type = "Api";
  }
  //PAM
  String getTitle() {
    return title;
  }

  int getId() {
    return id;
  }

  int getUserId() {
    return userId;
  }

  void setTitle(String title) {
    this.title = title;
  }

  String getText() {
    return text;
  }

  void setText(String text) {
    this.text = text;
  }

  String getPhotographer() {
    return photographer;
  }

  void setPhotographer(String photographer) {
    this.photographer = photographer;
  }

  String getAuthor() {
    return author;
  }

  void setAuthor(String author) {
    this.author = author;
  }

  String getPhotoThumb() {
    return photoThumb;
  }

  void setPhotoThumb() {
    photoThumb = photoThumb;
  }

  String getType() {
    return type;
  }

  void setFav(bool fav) {
    this.fav = fav;
  }

  bool getFav() {
    return fav;
  }
}
