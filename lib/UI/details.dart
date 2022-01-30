import 'package:flutter/material.dart';
import 'package:flutter_chall/model/article.dart';
import 'package:flutter_chall/model/comments.dart';
import 'package:flutter_chall/model/favList.dart';
import 'package:flutter_chall/resources/comments_api_provider.dart';

class DetailsUI extends StatefulWidget {
  final Article article;
  // ignore: use_key_in_widget_constructors
  const DetailsUI(this.article);
  @override
  _DetailsUIState createState() => _DetailsUIState();
}

class _DetailsUIState extends State<DetailsUI> {
  // void getCommentListFromAPI() async {
  //   List<Article> tempComments = await repository.fetchArticleList();
  //   for (Article article in tempArticle) {
  //     articles.add(article);
  //   }
  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   getCommentListFromAPI();
  //   super.initState();
  //   setState(() {});
  // }

  // Article article = Article(
  //     "Menilik Seluk-Beluk DPRD Kota Surabaya",
  //     "Sebagian mahasiswa Universitas Kristen (UK) Petra dari beberapa kelas Pendidikan Kewarganegaraan (PKn) memenuhi undangan untuk mengunjungi Gedung Dewan Perwakilan Rakyat Daerah (DPRD) Kota Surabaya pada Senin (20/12/2021). Kunjungan ini dilakukan atas undangan dari Alfian Limardi, S.T., M.H. selaku anggota DPRD Kota Surabaya Komisi B yang pernah menjadi dosen tamu di kelas PKn tersebut. Kegiatan ini bertujuan untuk mengetahui cara kerja wakil rakyat dalam mewujudkan tujuan nasional yang menjadi salah satu materi di kelas PKn. \n \n Tepat pukul 14.30 WIB, mahasiswa diarahkan menuju ke ruang Badan Pembentukan Perda (BPP). Di ruangan ini, mahasiswa mendengarkan penjelasan dari Alfian mengenai dasar hukum, fungsi, komisi, jenis rapat, dan cara kerja DPRD. Setelah itu, acara dilanjutkan dengan sesi tanya jawab dan diskusi. Diskusi ini membahas tentang kebutuhan Kota Surabaya yang dapat menjadi kegiatan pengabdian masyarakat dan peluang magang mahasiswa di DPRD Kota Surabaya. Dalam diskusi tersebut, anggota Fraksi Partai Solidaritas Indonesia (PSI) ini berpesan supaya mahasiswa dapat lebih mempelajari tentang politik. Hal ini dikarenakan politik memengaruhi berbagai sendi kehidupan, mulai dari pendidikan, kepemilikan aset, bahkan kehidupan sosial masyarakat. \n \n Seusai itu, acara diisi dengan kegiatan sharing oleh mahasiswa UK Petra yang meraih juara best prize ASEAN short video competition. Video pendek ini mengambil sudut pandang kentalnya toleransi masyarakat Indonesia terhadap berbagai suku dan agama yang ada. Meski memiliki toleransi yang tinggi, kita tidak boleh bersikap toleran terhadap intoleransi. “Kalau kita toleran terhadap intoleransi, maka intoleransi ini akan membesar dan merusak hubungan yang ada,” ujar anggota Komisi B Fraksi PSI tersebut. \n \n Tak hanya itu, acara juga dilanjutkan dengan pertukaran cendera mata. UK Petra memberikan buku hasil penelitian dosen-dosen UK Petra berjudul “Keliling Surabaya: dari budaya, kampung, sampai kulinernya”. Alfian kemudian mengajak peserta untuk meninjau ruang kantor DPRD Kota Surabaya. Mahasiswa UK Petra mendapat kesempatan untuk mengunjungi ruang rapat paripurna dan alun-alun Surabaya yang terletak di basement. Kesempatan berkeliling ini sekaligus menandakan berakhirnya acara kunjungan. \n \n DPRD sebagai wakil rakyat bertugas untuk menyampaikan aspirasi masyarakat. Sejalan dengan itu, jika menemukan sesuatu di sekitar kita yang tidak sejalan dengan semestinya, Sobat harus berani untuk berbicara. Jadi Sobat GENTA, lebih baik speak up daripada hanya berdiam diri, ya! \n \n ",
  //     "Christensen Derick, Vanessa Nelwan",
  //     "Felly Juvencia",
  //     "1.jpg",
  //     "universitas");

  List<Comments> comments = [
    Comments("hrs dicari sampai dpt...", "sally"),
    Comments("sabi sabi yuk", "aci gulung")
  ];
  int getArticleId() {
    return widget.article.getId();
  }

  void getCommentsListFromAPI() async {
    CommentsApiProvider commentsApiProvider =
        CommentsApiProvider(getArticleId());
    List<Comments> tempComm = await commentsApiProvider.getCommentsById();
    for (Comments com in tempComm) {
      comments.add(com);
    }
    setState(() {});
  }

  @override
  void initState() {
    getCommentsListFromAPI();
    super.initState();
    setState(() {});
  }

  int likecount = 1;
  int downcount = 1;
  TextEditingController input = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double viewWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Beri Takan'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.share),
              tooltip: 'share article',
              onPressed: () {
                // handle the press
              },
            ),
            //favorit
            IconButton(
              color: widget.article.getFav() ? Colors.red : Colors.white,
              icon: const Icon(Icons.favorite),
              tooltip: 'add favorit',
              onPressed: () {
                if (!widget.article.getFav()) {
                  widget.article.setFav(true);
                  favlist.addFavList(widget.article);
                  //if not favorite yet

                  setState(() {
                    // Favourites(favlist.getFavList()); //manggil lagi class stf
                  });
                } else {
                  widget.article.setFav(false);
                  favlist.delFav(widget.article);
                  setState(() {});
                }
                // handle the press
              },
            ),
          ],
          // backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 15, right: 15, top: 5, bottom: 8),
                  child: Column(
                    children: [
                      //date and time
                      Container(
                        child: const Text("Senin,27 Des 2021, 12.04 WIB"),
                        margin: const EdgeInsets.only(bottom: 15, top: 6),
                      ),
                      //title
                      Container(
                        margin: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          widget.article.title,
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        ),
                      ),
                      //author
                      Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Writer: " + widget.article.getAuthor(),
                            textAlign: TextAlign.start,
                            style: const TextStyle(fontSize: 18),
                          )),
                      //photoThumbail
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14.0),
                          child: Image.asset(
                            widget.article.getPhotoThumb(),
                            width: (viewWidth - 30),
                          ),
                        ),
                      ),
                      //photographer
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Photo by: " + widget.article.getPhotographer(),
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      //isi
                      Text(
                        widget.article.getText(),
                        style: const TextStyle(fontSize: 16),
                      ),
                      //text comment
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: const Text(
                          "Comment Section",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      //komentar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // ignore: sized_box_for_whitespace
                          Container(
                            width: 300,
                            height: 70,
                            child: TextFormField(
                              controller: input,
                              keyboardType: TextInputType.multiline,
                              maxLines: 70,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 2.0),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                fillColor: Colors.grey[50],
                                hintText: 'Comment',
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: IconButton(
                                    icon: const Icon(Icons.send),
                                    onPressed: () {
                                      if (input.text != "") {
                                        comments.add(
                                            Comments(input.text, 'anonym'));
                                      }
                                    },
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      if (input.text != "") {
                                        comments.add(
                                            Comments(input.text, 'anonym'));
                                        setState(() {});
                                      }
                                    },
                                    child: const Text("Send")),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(
                              top: 15, bottom: 6, left: 8),
                          child: const Text(
                            "Lihat Komentar ",
                            style: TextStyle(fontSize: 16),
                          )),
                      const Divider(
                        thickness: 3,
                        color: Colors.black,
                        height: 20,
                        indent: 8,
                        endIndent: 5,
                      )
                    ],
                  ),
                ),
              ),

              //comments from user
              Card(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: comments.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              //username
                              Wrap(
                                alignment: WrapAlignment.start,
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(
                                          left: 10, right: 18),
                                      child: Text(
                                        comments[index].getUsername(),
                                        style: const TextStyle(fontSize: 17),
                                      )),
                                  //jam
                                  const Text(
                                    "12 Sep 2022" + "  |  Laporkan",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              //commentnya
                              Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 10),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    comments[index].getComment(),
                                    style: const TextStyle(fontSize: 17),
                                  )),

                              //button balasan,laporkan likes dislike.
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "BALASAN",
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.grey),
                                      )),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            likecount++;
                                          },
                                          child: Row(
                                            children: [
                                              const Icon(
                                                  Icons.keyboard_arrow_up),
                                              Text(likecount.toString())
                                            ],
                                          )),
                                      TextButton(
                                          onPressed: () {
                                            downcount++;
                                          },
                                          child: Row(
                                            children: [
                                              const Icon(
                                                  Icons.keyboard_arrow_down),
                                              Text(downcount.toString())
                                            ],
                                          )),
                                    ],
                                  )
                                ],
                              ),
                              const Divider(
                                thickness: 1,
                                color: Colors.grey,
                                endIndent: 0,
                                indent: 0,
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
