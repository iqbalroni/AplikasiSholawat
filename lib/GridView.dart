import 'dart:math';

import 'package:flutter/material.dart';

class GridOne extends StatefulWidget {
  @override
  _GridOneState createState() => _GridOneState();
}

class _GridOneState extends State<GridOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.count(
        padding: EdgeInsets.only(
          top: 10,
          right: 10,
          left: 10,
        ),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          CardContent(
            nama: 'Perbedaan laravel',
            gambar: '1.jpg',
          ),
          CardContent(
            nama: 'Apa itu text editor',
            gambar: '2.jpg',
          ),
          CardContent(
            nama: 'Portofolio',
            gambar: '3.jpg',
          ),
          CardContent(
            nama: 'CorelDraw',
            gambar: '4.jpg',
          ),
          CardContent(
            nama: 'Java',
            gambar: '5.jpg',
          ),
        ],
      ),
    );
  }
}

// _-----------------------------------_ //
// ini untuk detail

class Satu extends StatelessWidget {
  final String namaFix;
  final String gambarFix;
  const Satu({
    Key? key,
    required this.namaFix,
    required this.gambarFix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaFix),
      ),
      body: Container(
        child: Image(
          image: AssetImage('assets/qoutes/' + gambarFix),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// _-----------------------------------_ //
// ini untuk

class CardContent extends StatelessWidget {
  final String nama;
  final String gambar;
  const CardContent({
    Key? key,
    required this.nama,
    required this.gambar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Satu(
            namaFix: nama,
            gambarFix: gambar,
          );
        }));
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/qoutes/' + gambar),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                nama,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
