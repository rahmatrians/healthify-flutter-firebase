import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Akun extends StatefulWidget {
  final String nama, email, foto;

  Akun({this.nama, this.email, this.foto});

  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

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
                  ClipOval(
                      child: Image.network(widget.foto, width: 70, height: 70)),
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
                child: new Text("Nama : ${widget.nama}"),
              ),
              SizedBox(height: 10),
              new Container(
                width: 1300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(20),
                child: new Text("Email : ${widget.email}"),
              ),
              SizedBox(height: 30),
              FlatButton(
                minWidth: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 12, bottom: 12),
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Keluar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                onPressed: () {
                  _signOut();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
