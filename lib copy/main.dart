import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import './beranda.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import './makanan_sehat.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "My Store",
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Future<void> _pressLogin() async {
  //   final googleUser = await GoogleSignIn().signIn();
  //   print(googleUser.email);
  // }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.grey[200],
        // appBar: new AppBar(
        //   backgroundColor: Color(0xff1DBAB5),
        //   title: Text("Healthify"),
        // ),
        body: Center(
          child: RaisedButton(
              child: Text("Login"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Beranda()),
                );
              }),
        ));
  }
}
