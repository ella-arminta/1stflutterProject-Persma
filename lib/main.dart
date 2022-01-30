import 'package:flutter/material.dart';
import 'package:flutter_chall/UI/home.dart';

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF484848),
    100: Color(0xFF414141),
    200: Color(0xFF3a3a3a),
    300: Color(0xFF323232),
    400: Color(0xFF2b2b2b),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF1d1d1d),
    700: Color(0xFF161616),
    800: Color(0xFF070707),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF212121;
void main() {
  runApp(MaterialApp(
      title: 'Berita Now',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryBlack,
      ),
      home: const HomeBerita())); //HomeBerita //dummydart
}
