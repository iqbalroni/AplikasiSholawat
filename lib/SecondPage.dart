import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Belajar")),
      ),
      body: Hero(
        tag: 'Profil',
        child: Container(
          child: Image(
            image: AssetImage('assets/qoutes/1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
