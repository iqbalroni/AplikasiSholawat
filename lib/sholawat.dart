import 'package:flutter/material.dart';

class Sholawat extends StatelessWidget {
  const Sholawat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Content(
              judul: "Addinullana",
              lirik: "addinullana.jpeg",
            ),
            Content(
              judul: "Ahmad Ya Habibi",
              lirik: "ahmadyahabibi.jpeg",
            ),
            Content(
              judul: "Alfa Sholallah",
              lirik: "alfa.jpeg",
            ),
            Content(
              judul: "Al Kaunu",
              lirik: "alkaunuadho.jpeg",
            ),
            Content(
              judul: "Al Madad",
              lirik: "almadad.jpeg",
            ),
            Content(
              judul: "Al Qolbu Mutayyam",
              lirik: "alkaunuadho.jpeg",
            ),
            Content(
              judul: "Annabi SholluAlaih",
              lirik: "annabishollualaih.jpeg",
            ),
            Content(
              judul: "Assalamualaik",
              lirik: "assalamualaik.jpeg",
            ),
            Content(
              judul: "Assubhubada",
              lirik: "assubhubada.jpeg",
            ),
            Content(
              judul: "Birossulillahi",
              lirik: "birossulillahi.jpeg",
            ),
            Content(
              judul: "Burdah",
              lirik: "burdah.jpg",
            ),
            Content(
              judul: "Busrollana",
              lirik: "busrollana.jpeg",
            ),
            Content(
              judul: "Da'uni",
              lirik: "dauni.jpeg",
            ),
            Content(
              judul: "Ibba Daullah",
              lirik: "ibbadaullah.jpeg",
            ),
            Content(
              judul: "Inqinazurtum",
              lirik: "inqinazurtum.jpeg",
            ),
            Content(
              judul: "Isfa'lana",
              lirik: "isfalana.jpeg",
            ),
            Content(
              judul: "Khobbiri",
              lirik: "khobiri.jpeg",
            ),
            Content(
              judul: "Khoirol Bariyah",
              lirik: "khoirolbariyah.jpeg",
            ),
            Content(
              judul: "La Yurdhik",
              lirik: "layurdhik.jpg",
            ),
            Content(
              judul: "Nadal Munadi",
              lirik: "nadalmunadi.jpg",
            ),
            Content(
              judul: "Nurul Mustoffa",
              lirik: "nurulmustofa.jpeg",
            ),
            Content(
              judul: "Nurun Halla",
              lirik: "nurunhalla.jfif",
            ),
            Content(
              judul: "QodKafani",
              lirik: "qodkafani.jpeg",
            ),
            Content(
              judul: "Qomarun",
              lirik: "qomarun.jpeg",
            ),
            Content(
              judul: "Qul Ya Adzim",
              lirik: "qulyaadzim.jpeg",
            ),
            Content(
              judul: "Robbi Kholaq",
              lirik: "robbikholaq.jpg",
            ),
            Content(
              judul: "Sa'duna fiddunya",
              lirik: "sadunafiddunya.jpeg",
            ),
            Content(
              judul: "Sahrul Robbi",
              lirik: "sahrulrobbi.jpeg",
            ),
            Content(
              judul: "Shubahanallah",
              lirik: "shubahanallah.jpeg",
            ),
            Content(
              judul: "Sidnan Nabi",
              lirik: "sidnannabi.jpeg",
            ),
            Content(
              judul: "Subhanaman",
              lirik: "subhanamandikruhu.jpeg",
            ),
            Content(
              judul: "Tholama Asyqu",
              lirik: "tholamaasyqu.jpeg",
            ),
            Content(
              judul: "La Ilaha Illallah",
              lirik: "tubalayna.jpeg",
            ),
            Content(
              judul: "Wulidal Musyarof",
              lirik: "wulidalmusyarof.jpeg",
            ),
            Content(
              judul: "Ya Ayyuhan Nabi",
              lirik: "yaayyuhannabi.jpeg",
            ),
            Content(
              judul: "Ya Hayyatirruh",
              lirik: "yahayyatirruh.jpeg",
            ),
            Content(
              judul: "Ya Imamarrus",
              lirik: "yaimamarrus.jpeg",
            ),
            Content(
              judul: "Ya Khoirohadi",
              lirik: "yakhoirohadi.jpeg",
            ),
            Content(
              judul: "Ya Khoiro Maulud",
              lirik: "yakhoiromaulud.jpeg",
            ),
            Content(
              judul: "Ya Sayyida",
              lirik: "yasayyida.jpeg",
            ),
            Content(
              judul: "Ya Sayyidi",
              lirik: "yassayyidi.jpeg",
            ),
            Content(
              judul: "Ya Thoiba",
              lirik: "yathoiba.jpeg",
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
              image: AssetImage('assets/lirik/' + gambar),
            ),
          ),
        ),
      ),
    );
  }
}
