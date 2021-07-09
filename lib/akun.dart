import 'package:flutter/material.dart';

class Akun extends StatefulWidget {
  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Akun"),
        backgroundColor: Color(0xff1DBAB5),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Column(
                children: [
                  Image.asset(
                    "images/profilePict.png",
                    height: 80,
                  ),
                ],
              ),
              SizedBox(height: 30),
              new Container(
                width: 1300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(20),
                child: new Text("Nama : Armin"),
              ),
              SizedBox(height: 10),
              new Container(
                width: 1300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(20),
                child: new Text("Tanggal Lahir : 01 Januari 1999"),
              ),
              SizedBox(height: 10),
              new Container(
                width: 1300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(20),
                child: new Text("Kelamin : Laki-laki"),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
