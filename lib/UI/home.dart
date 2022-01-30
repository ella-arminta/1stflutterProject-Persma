import 'package:flutter/material.dart';
import 'package:flutter_chall/UI/articlesHome.dart';
import 'package:flutter_chall/UI/favourites.dart';
import 'package:flutter_chall/UI/majalah.dart';
import 'package:flutter_chall/model/favList.dart';

class HomeBerita extends StatefulWidget {
  const HomeBerita({Key? key}) : super(key: key);

  @override
  _HomeBeritaState createState() => _HomeBeritaState();
}

class _HomeBeritaState extends State<HomeBerita> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              title: const Text('Beri Takan'),
              centerTitle: true,
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  );
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.account_circle_outlined),
                  tooltip: 'Account info',
                  onPressed: () {
                    // handle the press
                  },
                ),
              ],
              elevation: 0,
              bottom: const TabBar(
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      color: Colors.white),
                  tabs: [
                    Tab(icon: Icon(Icons.article), text: 'Articles'),
                    Tab(icon: Icon(Icons.menu_book), text: 'Magazines'),
                    Tab(icon: Icon(Icons.bookmark), text: 'Favourites')
                  ])),
          body: TabBarView(
            children: [
              const article_home(),
              //start articles :
              const Majalah(),
              Favourites(favlist.getFavList()),
            ],
          ),
        ));
  }
}
