class Magazine {
  String judul = "";
  String cover = "assets/majalahGenta/";
  String edisi = "";
  String tglPub = "";
  Magazine(this.judul, String cover, this.edisi, this.tglPub) {
    this.cover = this.cover + cover;
  }
  String getCover() {
    return cover;
  }

  String getJudul() {
    return judul;
  }

  String getEdisi() {
    return edisi;
  }

  String getTglPub() {
    return getTglPub();
  }
}
