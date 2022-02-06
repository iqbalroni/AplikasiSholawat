import 'package:flutter/material.dart';
import './sholawat.dart';
import './suluk.dart';

class primary extends StatelessWidget {
  const primary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sholawat"),
          backgroundColor: Color(0xff095F54),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text("LIRIK"),
              ),
              Tab(
                child: Text("SULUK"),
              ),
              Tab(
                child: Text("FAVORITE"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Sholawat(),
            Suluk(),
            Center(
              child: Text("CommingSoon"),
            ),
          ],
        ),
      ),
    );
  }
}
