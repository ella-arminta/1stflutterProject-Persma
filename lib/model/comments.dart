class Comments {
  String com = "";
  String dateTime = "";
  String time = "";
  String username = "";
  String email = "";
  Comments(this.com, this.username);
  Comments.fromJson(Map<String, dynamic> json) {
    username = json['name'];
    com = json['body'];
    email = json['email'];
  }
  String getUsername() {
    return username;
  }

  String getComment() {
    return com;
  }
}
