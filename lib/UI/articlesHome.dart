import 'package:flutter/material.dart';
import 'package:flutter_chall/model/article.dart';
import 'package:flutter_chall/resources/repository.dart';

import 'details.dart';

class article_home extends StatefulWidget {
  const article_home({Key? key}) : super(key: key);

  @override
  _article_homeState createState() => _article_homeState();
}

class _article_homeState extends State<article_home> {
  List<Article> articles = [
    Article(
        "Menilik Seluk-Beluk DPRD Kota Surabaya",
        "Sebagian mahasiswa Universitas Kristen (UK) Petra dari beberapa kelas Pendidikan Kewarganegaraan (PKn) memenuhi undangan untuk mengunjungi Gedung Dewan Perwakilan Rakyat Daerah (DPRD) Kota Surabaya pada Senin (20/12/2021). Kunjungan ini dilakukan atas undangan dari Alfian Limardi, S.T., M.H. selaku anggota DPRD Kota Surabaya Komisi B yang pernah menjadi dosen tamu di kelas PKn tersebut. Kegiatan ini bertujuan untuk mengetahui cara kerja wakil rakyat dalam mewujudkan tujuan nasional yang menjadi salah satu materi di kelas PKn.Tepat pukul 14.30 WIB, mahasiswa diarahkan menuju ke ruang Badan Pembentukan Perda (BPP). Di ruangan ini, mahasiswa mendengarkan penjelasan dari Alfian mengenai dasar hukum, fungsi, komisi, jenis rapat, dan cara kerja DPRD. Setelah itu, acara dilanjutkan dengan sesi tanya jawab dan diskusi. Diskusi ini membahas tentang kebutuhan Kota Surabaya yang dapat menjadi kegiatan pengabdian masyarakat dan peluang magang mahasiswa di DPRD Kota Surabaya. Dalam diskusi tersebut, anggota Fraksi Partai Solidaritas Indonesia (PSI) ini berpesan supaya mahasiswa dapat lebih mempelajari tentang politik. Hal ini dikarenakan politik memengaruhi berbagai sendi kehidupan, mulai dari pendidikan, kepemilikan aset, bahkan kehidupan sosial masyarakat.Seusai itu, acara diisi dengan kegiatan sharing oleh mahasiswa UK Petra yang meraih juara best prize ASEAN short video competition. Video pendek ini mengambil sudut pandang kentalnya toleransi masyarakat Indonesia terhadap berbagai suku dan agama yang ada. Meski memiliki toleransi yang tinggi, kita tidak boleh bersikap toleran terhadap intoleransi. “Kalau kita toleran terhadap intoleransi, maka intoleransi ini akan membesar dan merusak hubungan yang ada,” ujar anggota Komisi B Fraksi PSI tersebut.Tak hanya itu, acara juga dilanjutkan dengan pertukaran cendera mata. UK Petra memberikan buku hasil penelitian dosen-dosen UK Petra berjudul “Keliling Surabaya: dari budaya, kampung, sampai kulinernya”. Alfian kemudian mengajak peserta untuk meninjau ruang kantor DPRD Kota Surabaya. Mahasiswa UK Petra mendapat kesempatan untuk mengunjungi ruang rapat paripurna dan alun-alun Surabaya yang terletak di basement. Kesempatan berkeliling ini sekaligus menandakan berakhirnya acara kunjungan.Dr. Linda Bustan, S.Th., M.Div. selaku Ketua Departemen Mata Kuliah Umum (DMU) UK Petra berharap, mahasiswa dapat memperoleh wawasan baru melalui kunjungan ini. Tidak sekadar menerima materi dari kelas, mahasiswa juga dapat melihat data di lapangan secara langsung. Dengan begitu, mereka dapat sekaligus melakukan pengecekan terhadap materi yang ada di kelas. Dari kunjungan ini, mahasiswa juga diajak melihat sisi lain dari DPRD, seperti menerima aduan dan saran dari masyarakat. Harapannya, mahasiswa memiliki gambaran mengenai cara kerja anggota dewan yang sesungguhnya.DPRD sebagai wakil rakyat bertugas untuk menyampaikan aspirasi masyarakat. Sejalan dengan itu, jika menemukan sesuatu di sekitar kita yang tidak sejalan dengan semestinya, Sobat harus berani untuk berbicara. Jadi Sobat GENTA, lebih baik speak up daripada hanya berdiam diri, ya!",
        "Christensen Derick, Vanessa Nelwan",
        "Felly Juvencia",
        "1.jpg",
        "universitas"),
    Article(
        "Tingkatkan Ketahanan Pangan Bersama Kampung Sayur",
        "Pandemi yang tak kunjung usai memberi dampak negatif pada berbagai aspek kehidupan, termasuk ketahanan pangan. Menyadari hal tersebut, Badan Eksekutif Mahasiswa (BEM) Universitas Kristen (UK) Petra berkolaborasi dengan beberapa kampung di Surabaya untuk menggelar acara pengabdian masyarakat (pengmas). Mengadopsi nama To Learn From Action (TERRA), acara ini digelar secara daring dan luring selama tiga hari.Kelompok sesi pertama berkunjung ke Kampung Mojo dan Medokan Semampir pada Senin (20/12/2021), sedangkan sesi kedua menuju Kampung Simomulyo pada Selasa (21/12/2021). Sebelum menjalankan proyek, peserta mengikuti technical meeting secara daring melalui media Zoom pada Sabtu (18/12/2021). Selain membahas teknis acara, panitia mendatangkan Lia Sidik, Ph.D. sebagai narasumber dalam seminar mengenai pemasaran dan branding.Acara hari pertama dibuka dengan kata sambutan oleh Gracia Giovanny selaku Ketua TERRA 2021. “Semoga setelah mengikuti kegiatan ini, mahasiswa menjadi semakin peduli, tergerak, dan berani mengambil aksi untuk membantu sesama. Saya juga berharap warga sekitar dapat mewujudkan cita-citanya sebagai kampung wisata dan edukasi melalui acara TERRA,” tutur mahasiswi Program Studi Tax Accounting UK Petra ini. Setelah itu, Widi Santoso Wijanarko selaku Ketua BEM UK Petra, Dr. Rudy Setiawan, S.T., M.T. selaku Wakil Rektor Bidang Kemahasiswaan, dan perwakilan penduduk dari masing-masing kampung turut memberikan sambutan sekaligus pesan pada peserta melalui video.Setelah menyaksikan kata sambutan, tepat pukul 09.30 WIB peserta beralih ke tugasnya masing-masing. Peserta yang mengikuti kegiatan secara daring diminta membuat poster, logo, dan feeds Instagram untuk melakukan promosi sambil melanjutkan kegiatan melalui media Zoom. Adapun tema promosi disesuaikan dengan kampung dan jenis tanaman yang sudah dibagi ke masing-masing kelompok.Di sisi lain, peserta yang hadir langsung di kampung memulai serangkaian acara dengan menghias pot menggunakan cat. Seusai dihias, pot dijadikan wadah untuk menanam berbagai jenis bibit tanaman sayur. Peserta diarahkan agar akar tanaman yang masih lunak tidak rusak saat dipindahkan ke pot. Selanjutnya, peserta berotasi ke beberapa lokasi yang sudah ditentukan untuk melukis mural bertema “Kampung Sayur” di jalan atau tembok kampung. Setelah tiga jam melukis, acara ditutup dengan doa dan pembuatan refleksi.Dari kegiatan sederhana seperti melukis, menanam, dan membuat poster, peserta TERRA sudah berhasil membantu warga kampung mewujudkan cita-citanya. Sama halnya dengan itu, talenta Sobat GENTA pun bisa dipakai untuk berdampak bagi lingkungan. Asalkan didasari dengan niat dan ketulusan, aksi sekecil apapun dapat menjadi alat untuk perkara yang besar. Jadi, jangan takut mengambil langkah kecil untuk membantu sesama ya, Sobat!",
        "Fiona Angelina, Calista Marvella",
        "Felicia Ongkojoyo",
        "2.jpg",
        "majalah"),
    Article(
        "Menilik Seluk-Beluk DPRD Kota Surabaya",
        "Sebagian mahasiswa Universitas Kristen (UK) Petra dari beberapa kelas Pendidikan Kewarganegaraan (PKn) memenuhi undangan untuk mengunjungi Gedung Dewan Perwakilan Rakyat Daerah (DPRD) Kota Surabaya pada Senin (20/12/2021). Kunjungan ini dilakukan atas undangan dari Alfian Limardi, S.T., M.H. selaku anggota DPRD Kota Surabaya Komisi B yang pernah menjadi dosen tamu di kelas PKn tersebut. Kegiatan ini bertujuan untuk mengetahui cara kerja wakil rakyat dalam mewujudkan tujuan nasional yang menjadi salah satu materi di kelas PKn.Tepat pukul 14.30 WIB, mahasiswa diarahkan menuju ke ruang Badan Pembentukan Perda (BPP). Di ruangan ini, mahasiswa mendengarkan penjelasan dari Alfian mengenai dasar hukum, fungsi, komisi, jenis rapat, dan cara kerja DPRD. Setelah itu, acara dilanjutkan dengan sesi tanya jawab dan diskusi. Diskusi ini membahas tentang kebutuhan Kota Surabaya yang dapat menjadi kegiatan pengabdian masyarakat dan peluang magang mahasiswa di DPRD Kota Surabaya. Dalam diskusi tersebut, anggota Fraksi Partai Solidaritas Indonesia (PSI) ini berpesan supaya mahasiswa dapat lebih mempelajari tentang politik. Hal ini dikarenakan politik memengaruhi berbagai sendi kehidupan, mulai dari pendidikan, kepemilikan aset, bahkan kehidupan sosial masyarakat.Seusai itu, acara diisi dengan kegiatan sharing oleh mahasiswa UK Petra yang meraih juara best prize ASEAN short video competition. Video pendek ini mengambil sudut pandang kentalnya toleransi masyarakat Indonesia terhadap berbagai suku dan agama yang ada. Meski memiliki toleransi yang tinggi, kita tidak boleh bersikap toleran terhadap intoleransi. “Kalau kita toleran terhadap intoleransi, maka intoleransi ini akan membesar dan merusak hubungan yang ada,” ujar anggota Komisi B Fraksi PSI tersebut.Tak hanya itu, acara juga dilanjutkan dengan pertukaran cendera mata. UK Petra memberikan buku hasil penelitian dosen-dosen UK Petra berjudul “Keliling Surabaya: dari budaya, kampung, sampai kulinernya”. Alfian kemudian mengajak peserta untuk meninjau ruang kantor DPRD Kota Surabaya. Mahasiswa UK Petra mendapat kesempatan untuk mengunjungi ruang rapat paripurna dan alun-alun Surabaya yang terletak di basement. Kesempatan berkeliling ini sekaligus menandakan berakhirnya acara kunjungan.Dr. Linda Bustan, S.Th., M.Div. selaku Ketua Departemen Mata Kuliah Umum (DMU) UK Petra berharap, mahasiswa dapat memperoleh wawasan baru melalui kunjungan ini. Tidak sekadar menerima materi dari kelas, mahasiswa juga dapat melihat data di lapangan secara langsung. Dengan begitu, mereka dapat sekaligus melakukan pengecekan terhadap materi yang ada di kelas. Dari kunjungan ini, mahasiswa juga diajak melihat sisi lain dari DPRD, seperti menerima aduan dan saran dari masyarakat. Harapannya, mahasiswa memiliki gambaran mengenai cara kerja anggota dewan yang sesungguhnya.DPRD sebagai wakil rakyat bertugas untuk menyampaikan aspirasi masyarakat. Sejalan dengan itu, jika menemukan sesuatu di sekitar kita yang tidak sejalan dengan semestinya, Sobat harus berani untuk berbicara. Jadi Sobat GENTA, lebih baik speak up daripada hanya berdiam diri, ya!",
        "Christensen Derick, Vanessa Nelwan",
        "Felly Juvencia",
        "3.jpg",
        "lifestyle"),
    Article(
        "Tingkatkan Ketahanan Pangan Bersama Kampung Sayur",
        "Pandemi yang tak kunjung usai memberi dampak negatif pada berbagai aspek kehidupan, termasuk ketahanan pangan. Menyadari hal tersebut, Badan Eksekutif Mahasiswa (BEM) Universitas Kristen (UK) Petra berkolaborasi dengan beberapa kampung di Surabaya untuk menggelar acara pengabdian masyarakat (pengmas). Mengadopsi nama To Learn From Action (TERRA), acara ini digelar secara daring dan luring selama tiga hari.Kelompok sesi pertama berkunjung ke Kampung Mojo dan Medokan Semampir pada Senin (20/12/2021), sedangkan sesi kedua menuju Kampung Simomulyo pada Selasa (21/12/2021). Sebelum menjalankan proyek, peserta mengikuti technical meeting secara daring melalui media Zoom pada Sabtu (18/12/2021). Selain membahas teknis acara, panitia mendatangkan Lia Sidik, Ph.D. sebagai narasumber dalam seminar mengenai pemasaran dan branding.Acara hari pertama dibuka dengan kata sambutan oleh Gracia Giovanny selaku Ketua TERRA 2021. “Semoga setelah mengikuti kegiatan ini, mahasiswa menjadi semakin peduli, tergerak, dan berani mengambil aksi untuk membantu sesama. Saya juga berharap warga sekitar dapat mewujudkan cita-citanya sebagai kampung wisata dan edukasi melalui acara TERRA,” tutur mahasiswi Program Studi Tax Accounting UK Petra ini. Setelah itu, Widi Santoso Wijanarko selaku Ketua BEM UK Petra, Dr. Rudy Setiawan, S.T., M.T. selaku Wakil Rektor Bidang Kemahasiswaan, dan perwakilan penduduk dari masing-masing kampung turut memberikan sambutan sekaligus pesan pada peserta melalui video.Setelah menyaksikan kata sambutan, tepat pukul 09.30 WIB peserta beralih ke tugasnya masing-masing. Peserta yang mengikuti kegiatan secara daring diminta membuat poster, logo, dan feeds Instagram untuk melakukan promosi sambil melanjutkan kegiatan melalui media Zoom. Adapun tema promosi disesuaikan dengan kampung dan jenis tanaman yang sudah dibagi ke masing-masing kelompok.Di sisi lain, peserta yang hadir langsung di kampung memulai serangkaian acara dengan menghias pot menggunakan cat. Seusai dihias, pot dijadikan wadah untuk menanam berbagai jenis bibit tanaman sayur. Peserta diarahkan agar akar tanaman yang masih lunak tidak rusak saat dipindahkan ke pot. Selanjutnya, peserta berotasi ke beberapa lokasi yang sudah ditentukan untuk melukis mural bertema “Kampung Sayur” di jalan atau tembok kampung. Setelah tiga jam melukis, acara ditutup dengan doa dan pembuatan refleksi.Dari kegiatan sederhana seperti melukis, menanam, dan membuat poster, peserta TERRA sudah berhasil membantu warga kampung mewujudkan cita-citanya. Sama halnya dengan itu, talenta Sobat GENTA pun bisa dipakai untuk berdampak bagi lingkungan. Asalkan didasari dengan niat dan ketulusan, aksi sekecil apapun dapat menjadi alat untuk perkara yang besar. Jadi, jangan takut mengambil langkah kecil untuk membantu sesama ya, Sobat!",
        "Fiona Angelina, Calista Marvella",
        "Felicia Ongkojoyo",
        "4.jpg",
        "Hiburan"),
    Article(
        "Menilik Seluk-Beluk DPRD Kota Surabaya",
        "Sebagian mahasiswa Universitas Kristen (UK) Petra dari beberapa kelas Pendidikan Kewarganegaraan (PKn) memenuhi undangan untuk mengunjungi Gedung Dewan Perwakilan Rakyat Daerah (DPRD) Kota Surabaya pada Senin (20/12/2021). Kunjungan ini dilakukan atas undangan dari Alfian Limardi, S.T., M.H. selaku anggota DPRD Kota Surabaya Komisi B yang pernah menjadi dosen tamu di kelas PKn tersebut. Kegiatan ini bertujuan untuk mengetahui cara kerja wakil rakyat dalam mewujudkan tujuan nasional yang menjadi salah satu materi di kelas PKn.Tepat pukul 14.30 WIB, mahasiswa diarahkan menuju ke ruang Badan Pembentukan Perda (BPP). Di ruangan ini, mahasiswa mendengarkan penjelasan dari Alfian mengenai dasar hukum, fungsi, komisi, jenis rapat, dan cara kerja DPRD. Setelah itu, acara dilanjutkan dengan sesi tanya jawab dan diskusi. Diskusi ini membahas tentang kebutuhan Kota Surabaya yang dapat menjadi kegiatan pengabdian masyarakat dan peluang magang mahasiswa di DPRD Kota Surabaya. Dalam diskusi tersebut, anggota Fraksi Partai Solidaritas Indonesia (PSI) ini berpesan supaya mahasiswa dapat lebih mempelajari tentang politik. Hal ini dikarenakan politik memengaruhi berbagai sendi kehidupan, mulai dari pendidikan, kepemilikan aset, bahkan kehidupan sosial masyarakat.Seusai itu, acara diisi dengan kegiatan sharing oleh mahasiswa UK Petra yang meraih juara best prize ASEAN short video competition. Video pendek ini mengambil sudut pandang kentalnya toleransi masyarakat Indonesia terhadap berbagai suku dan agama yang ada. Meski memiliki toleransi yang tinggi, kita tidak boleh bersikap toleran terhadap intoleransi. “Kalau kita toleran terhadap intoleransi, maka intoleransi ini akan membesar dan merusak hubungan yang ada,” ujar anggota Komisi B Fraksi PSI tersebut.Tak hanya itu, acara juga dilanjutkan dengan pertukaran cendera mata. UK Petra memberikan buku hasil penelitian dosen-dosen UK Petra berjudul “Keliling Surabaya: dari budaya, kampung, sampai kulinernya”. Alfian kemudian mengajak peserta untuk meninjau ruang kantor DPRD Kota Surabaya. Mahasiswa UK Petra mendapat kesempatan untuk mengunjungi ruang rapat paripurna dan alun-alun Surabaya yang terletak di basement. Kesempatan berkeliling ini sekaligus menandakan berakhirnya acara kunjungan.Dr. Linda Bustan, S.Th., M.Div. selaku Ketua Departemen Mata Kuliah Umum (DMU) UK Petra berharap, mahasiswa dapat memperoleh wawasan baru melalui kunjungan ini. Tidak sekadar menerima materi dari kelas, mahasiswa juga dapat melihat data di lapangan secara langsung. Dengan begitu, mereka dapat sekaligus melakukan pengecekan terhadap materi yang ada di kelas. Dari kunjungan ini, mahasiswa juga diajak melihat sisi lain dari DPRD, seperti menerima aduan dan saran dari masyarakat. Harapannya, mahasiswa memiliki gambaran mengenai cara kerja anggota dewan yang sesungguhnya.DPRD sebagai wakil rakyat bertugas untuk menyampaikan aspirasi masyarakat. Sejalan dengan itu, jika menemukan sesuatu di sekitar kita yang tidak sejalan dengan semestinya, Sobat harus berani untuk berbicara. Jadi Sobat GENTA, lebih baik speak up daripada hanya berdiam diri, ya!",
        "Christensen Derick, Vanessa Nelwan",
        "Felly Juvencia",
        "5.jpg",
        "News"),
    Article(
        "Tingkatkan Ketahanan Pangan Bersama Kampung Sayur",
        "Pandemi yang tak kunjung usai memberi dampak negatif pada berbagai aspek kehidupan, termasuk ketahanan pangan. Menyadari hal tersebut, Badan Eksekutif Mahasiswa (BEM) Universitas Kristen (UK) Petra berkolaborasi dengan beberapa kampung di Surabaya untuk menggelar acara pengabdian masyarakat (pengmas). Mengadopsi nama To Learn From Action (TERRA), acara ini digelar secara daring dan luring selama tiga hari.Kelompok sesi pertama berkunjung ke Kampung Mojo dan Medokan Semampir pada Senin (20/12/2021), sedangkan sesi kedua menuju Kampung Simomulyo pada Selasa (21/12/2021). Sebelum menjalankan proyek, peserta mengikuti technical meeting secara daring melalui media Zoom pada Sabtu (18/12/2021). Selain membahas teknis acara, panitia mendatangkan Lia Sidik, Ph.D. sebagai narasumber dalam seminar mengenai pemasaran dan branding.Acara hari pertama dibuka dengan kata sambutan oleh Gracia Giovanny selaku Ketua TERRA 2021. “Semoga setelah mengikuti kegiatan ini, mahasiswa menjadi semakin peduli, tergerak, dan berani mengambil aksi untuk membantu sesama. Saya juga berharap warga sekitar dapat mewujudkan cita-citanya sebagai kampung wisata dan edukasi melalui acara TERRA,” tutur mahasiswi Program Studi Tax Accounting UK Petra ini. Setelah itu, Widi Santoso Wijanarko selaku Ketua BEM UK Petra, Dr. Rudy Setiawan, S.T., M.T. selaku Wakil Rektor Bidang Kemahasiswaan, dan perwakilan penduduk dari masing-masing kampung turut memberikan sambutan sekaligus pesan pada peserta melalui video.Setelah menyaksikan kata sambutan, tepat pukul 09.30 WIB peserta beralih ke tugasnya masing-masing. Peserta yang mengikuti kegiatan secara daring diminta membuat poster, logo, dan feeds Instagram untuk melakukan promosi sambil melanjutkan kegiatan melalui media Zoom. Adapun tema promosi disesuaikan dengan kampung dan jenis tanaman yang sudah dibagi ke masing-masing kelompok.Di sisi lain, peserta yang hadir langsung di kampung memulai serangkaian acara dengan menghias pot menggunakan cat. Seusai dihias, pot dijadikan wadah untuk menanam berbagai jenis bibit tanaman sayur. Peserta diarahkan agar akar tanaman yang masih lunak tidak rusak saat dipindahkan ke pot. Selanjutnya, peserta berotasi ke beberapa lokasi yang sudah ditentukan untuk melukis mural bertema “Kampung Sayur” di jalan atau tembok kampung. Setelah tiga jam melukis, acara ditutup dengan doa dan pembuatan refleksi.Dari kegiatan sederhana seperti melukis, menanam, dan membuat poster, peserta TERRA sudah berhasil membantu warga kampung mewujudkan cita-citanya. Sama halnya dengan itu, talenta Sobat GENTA pun bisa dipakai untuk berdampak bagi lingkungan. Asalkan didasari dengan niat dan ketulusan, aksi sekecil apapun dapat menjadi alat untuk perkara yang besar. Jadi, jangan takut mengambil langkah kecil untuk membantu sesama ya, Sobat!",
        "Fiona Angelina, Calista Marvella",
        "Felicia Ongkojoyo",
        "6.jpg",
        "feature"),
  ];

  void getArticleListFromAPI() async {
    List<Article> tempArticle = await repository.fetchArticleList();
    for (Article article in tempArticle) {
      articles.add(article);
    }
    setState(() {});
  }

  @override
  void initState() {
    getArticleListFromAPI();
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // start articles
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(top: 20, left: 30),
              child: const Text(
                "Latest ",
                style: TextStyle(fontSize: 35),
              )),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 390,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsUI(articles[5])));
              },
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  children: [
                    Column(children: [
                      //photothumb1
                      Image.asset(articles[0].getPhotoThumb(), width: 390),
                      //type
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 5,
                          left: 50,
                        ),
                        child: Container(
                          child: Text(
                            articles[0].getType(),
                            style: const TextStyle(color: Colors.blue),
                          ),
                          alignment: Alignment.bottomLeft,
                        ),
                      ),
                      //title
                      Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, bottom: 20),
                            child: Text(
                              articles[0].getTitle(),
                              style: const TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500),
                            ),
                          )),
                    ]),
                  ],
                ),
              ),
            ),
          ),
          Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(top: 20, left: 30),
              child: const Text(
                "Trending Now ",
                style: TextStyle(fontSize: 35),
              )),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              itemCount: articles.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsUI(articles[index])));
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    shadowColor: const Color.fromARGB(255, 34, 47, 107),
                    child: Column(
                      children: [
                        //thumnaik&title&desc
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //title&author
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, left: 8, right: 8, bottom: 12),
                              child: Column(
                                children: [
                                  //tipe
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      articles[index].getType(),
                                      style: const TextStyle(
                                        color: Colors.blue,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  //title
                                  Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      width: 200,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, right: 5),
                                        child: Text(
                                          articles[index].getTitle(),
                                          style: const TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      )),
                                  //author
                                  Container(
                                    margin:
                                        const EdgeInsets.only(left: 10, top: 8),
                                    width: 200,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5, bottom: 12),
                                      child: Text(
                                        articles[index].getAuthor(),
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 34, 47, 107),
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //PhotoThumb
                            Container(
                              // alignment: Alignment.topRight,
                              width: MediaQuery.of(context).size.width * 0.39,
                              height: 150,
                              child: Image.asset(
                                articles[index].getPhotoThumb(),
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                        //untuk share like button
                      ],
                    ),
                  ),
                );
                //end halaman articles
              }),
        ],
      ),
    ));
  }
}
