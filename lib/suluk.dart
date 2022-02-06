import 'package:flutter/material.dart';

class Suluk extends StatelessWidget {
  const Suluk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Content(
              judul: "Ya Hujrotan",
              lirik: "yahujrottan.jpeg",
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Color(0xff095F54),
              child: Center(
                child: Text(
                  "By : @Iqbalronii",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Content extends StatelessWidget {
  final String judul;
  final String lirik;
  const Content({
    Key? key,
    required this.judul,
    required this.lirik,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Page(
              nama: judul,
              gambar: lirik,
            );
          }),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          bottom: 8,
          right: 20,
          left: 20,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                offset: Offset(1, 2),
                color: Color(0xffD1D9D9).withOpacity(0.60),
              )
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  judul,
                  style: TextStyle(
                    color: Color(0xff303030),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff095F54),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String nama;
  final String gambar;
  const Page({
    Key? key,
    required this.nama,
    required this.gambar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
        backgroundColor: Color(0xff095F54),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_outlined),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/suluk/' + gambar),
            ),
          ),
        ),
      ),
    );
  }
}
