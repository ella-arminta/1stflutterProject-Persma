import 'package:flutter/material.dart';
import 'package:flutter_chall/UI/details.dart';
import 'package:flutter_chall/model/article.dart';

// ignore: must_be_immutable
class Favourites extends StatefulWidget {
  List<Article> favList;
  // ignore: use_key_in_widget_constructors
  Favourites(this.favList);
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: widget.favList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsUI(widget.favList[index])));
                setState(() {});
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
                                  widget.favList[index].getType(),
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
                                      widget.favList[index].getTitle(),
                                      style: const TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )),
                              //author
                              Container(
                                margin: const EdgeInsets.only(left: 10, top: 8),
                                width: 200,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5, right: 5, bottom: 12),
                                  child: Text(
                                    widget.favList[index].getAuthor(),
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 34, 47, 107),
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //PhotoThumb
                        // ignore: sized_box_for_whitespace
                        Container(
                          // alignment: Alignment.topRight,
                          width: MediaQuery.of(context).size.width * 0.39,
                          height: 150,
                          child: Image.asset(
                            widget.favList[index].getPhotoThumb(),
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
    );
  }
}
