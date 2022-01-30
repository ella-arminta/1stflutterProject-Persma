import 'package:flutter/material.dart';
import 'package:flutter_chall/model/magazine.dart';

// ignore: camel_case_types
class Majalah extends StatefulWidget {
  const Majalah({Key? key}) : super(key: key);

  @override
  _MajalahState createState() => _MajalahState();
}

class _MajalahState extends State<Majalah> {
  List<Magazine> magazines = [
    Magazine("Inner Flame", "179.jpg", "179", "Januari 2021"),
    Magazine("Merajut Diri", "180.jpg", "180", "Mei 2021"),
    Magazine("Fireflies", "181.jpg", "181", "Agustus 2021"),
    Magazine("enLIGHTen", "182.jpg", "182", "September 2021"),
    Magazine("Pijar Lentera", "183.jpg", "183", "Oktober 2021")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: magazines.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              // onTap: () => DetailsUI(),
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    fit: StackFit.loose,
                    children: [
                      Image.asset(
                        magazines[index].getCover(),
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: 500,
                        color: Colors.blue[900],
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Genta " + magazines[index].getEdisi(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),
                            // Text("edisi " + magazines[index].getEdisi()),
                            // Text(magazines[index].getTglPub())
                          ],
                        ),
                      )
                    ],
                  )),
            );
            // alignment: Alignment.topRight,
          }),
    );
  }
}
